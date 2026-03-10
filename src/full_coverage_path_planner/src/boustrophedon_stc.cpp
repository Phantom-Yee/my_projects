// STC just does boustrophon and a-start back and forth
// Copyright [2020] Nobleo Technology"  [legal/copyright]
//
#include "full_coverage_path_planner/boustrophedon_stc.h"

#include <algorithm>
#include <iostream>
#include <list>
#include <pluginlib/class_list_macros.h>
#include <string>
#include <vector>

// 添加新算法需要的头文件
#include <cmath>
#include <limits>
#include <fstream>
#include <sstream>


// register this planner as a BaseGlobalPlanner plugin
PLUGINLIB_EXPORT_CLASS(full_coverage_path_planner::BoustrophedonSTC, nav_core::BaseGlobalPlanner)

int pattern_dir_ = point;

namespace full_coverage_path_planner
{

// 计算多边形面积
double polygonArea(const std::vector<ContourPoint>& polygon) {
    int n = polygon.size();
    if (n < 3) return 0.0;
    
    double area = 0.0;
    for (int i = 0; i < n; i++) {
        int j = (i + 1) % n;
        area += polygon[i].x * polygon[j].y - polygon[j].x * polygon[i].y;
    }
    return std::abs(area) / 2.0;
}

// 计算多边形中心（质心）
ContourPoint polygonCentroid(const std::vector<ContourPoint>& polygon) {
    int n = polygon.size();
    if (n == 0) return ContourPoint(0, 0);
    if (n == 1) return polygon[0];
    if (n == 2) return ContourPoint(
        (polygon[0].x + polygon[1].x) / 2.0,
        (polygon[0].y + polygon[1].y) / 2.0
    );
    
    double cx = 0.0, cy = 0.0;
    double area = 0.0;
    
    for (int i = 0; i < n; i++) {
        int j = (i + 1) % n;
        double cross = polygon[i].x * polygon[j].y - polygon[j].x * polygon[i].y;
        area += cross;
        cx += (polygon[i].x + polygon[j].x) * cross;
        cy += (polygon[i].y + polygon[j].y) * cross;
    }
    
    area /= 2.0;
    if (area == 0.0) {
        double sumX = 0.0, sumY = 0.0;
        for (const auto& p : polygon) {
            sumX += p.x;
            sumY += p.y;
        }
        return ContourPoint(sumX / n, sumY / n);
    }
    
    return ContourPoint(cx / (6.0 * area), cy / (6.0 * area));
}

// 计算线段交点
ContourPoint lineIntersection(const ContourPoint& p1, const ContourPoint& p2, 
                       const ContourPoint& q1, const ContourPoint& q2, 
                       bool& intersects) {
    ContourPoint r = p2 - p1;
    ContourPoint s = q2 - q1;
    
    double crossRS = r.cross(s);
    ContourPoint qp = q1 - p1;
    
    // 如果平行
    if (std::abs(crossRS) < 1e-10) {
        intersects = false;
        return ContourPoint(0, 0);
    }
    
    double t = qp.cross(s) / crossRS;
    double u = qp.cross(r) / crossRS;
    
    // 这里我们允许 t 和 u 超出 [0, 1] 范围，因为我们计算的是直线的交点
    // 但是为了稳定性，我们不希望交点太远
    intersects = true;
    return ContourPoint(p1.x + r.x * t, p1.y + r.y * t);
}

// 偏移多边形（向内偏移）
// 恢复为原始算法，但增强了对“不平行/变形”的处理
std::vector<ContourPoint> offsetPolygon(const std::vector<ContourPoint>& polygon, double distance) {
    int n = polygon.size();
    if (n < 3) return polygon;
    
    // 检查多边形方向 (Area > 0 为 CCW, Area < 0 为 CW)
    // 我们的坐标系中，y轴向上，x轴向右
    double signedArea = 0.0;
    for (int i = 0; i < n; i++) {
        int j = (i + 1) % n;
        signedArea += polygon[i].x * polygon[j].y - polygon[j].x * polygon[i].y;
    }
    signedArea *= 0.5;
    
    // 确保我们向内偏移
    // 如果是 CCW (Area > 0)，向左是内，向右是外
    // 我们的 normal 计算公式 (-dy, dx) 是向左旋转 90 度
    // 所以 positive distance 对应向左偏移
    // 因此如果 CCW，distance 应该正；如果 CW，distance 应该负？
    // 或者我们直接归一化多边形为 CCW
    
    // 简单起见，如果 Area < 0，我们认为它是 CW，向内偏移应该是 "Right"
    // (-dy, dx) 是 Left. 所以我们需要 -distance
    
    double actualDistance = distance;
    if (signedArea < 0) {
        actualDistance = -distance; 
    }
    
    std::vector<ContourPoint> result;
    result.reserve(n);
    
    for (int i = 0; i < n; i++) {
        ContourPoint prev = polygon[(i - 1 + n) % n];
        ContourPoint curr = polygon[i];
        ContourPoint next = polygon[(i + 1) % n];
        
        // 计算相邻边的方向向量
        ContourPoint v1 = (curr - prev);
        ContourPoint v2 = (next - curr);
        
        // 如果边太短，忽略它（避免除零和不稳定性）
        if (std::sqrt(v1.x*v1.x + v1.y*v1.y) < 1e-4) v1 = ContourPoint(1e-4, 0); 
        if (std::sqrt(v2.x*v2.x + v2.y*v2.y) < 1e-4) v2 = ContourPoint(1e-4, 0);
        
        v1 = v1.normalized();
        v2 = v2.normalized();
        
        // 计算法向量 (向左)
        ContourPoint normal1(-v1.y, v1.x);
        ContourPoint normal2(-v2.y, v2.x);
        
        // 计算偏移后的线上的点
        ContourPoint offset1 = curr + normal1 * actualDistance;
        ContourPoint offset2 = curr + normal2 * actualDistance;
        
        // 计算两条偏移直线的交点
        bool intersects;
        ContourPoint intersection = lineIntersection(
            offset1, offset1 + v1,
            offset2, offset2 + v2,
            intersects
        );
        
        if (intersects) {
            // 增加稳定性检查：如果交点距离原顶点太远（说明角度极尖），则限制位置
            // 或者如果产生自交（变成本来不该有的方向），则需要处理
            // 这里做一个简单的距离钳制
            if (intersection.distance(curr) > std::abs(distance) * 2.5) { // 调小阈值到 2.5 倍
                // 角太尖了，取个平滑点
                 result.push_back(ContourPoint(
                    (offset1.x + offset2.x) / 2.0,
                    (offset1.y + offset2.y) / 2.0
                ));
            } else {
                result.push_back(intersection);
            }
        } else {
            // 平行线（或共线），取中点
            result.push_back(ContourPoint(
                (offset1.x + offset2.x) / 2.0,
                (offset1.y + offset2.y) / 2.0
            ));
        }
    }
    
    // 后处理：移除过于接近的点（合并顶点）
    // 这里的逻辑至关重要：
    // 当一条边变得非常短（相对于偏移距离 w）时，意味着两个顶点靠得很近。
    // 这时候我们应该将它们合并为一个点，从而减少多边形的边数（例如 6边形 -> 5边形）。
    // 这样下一轮偏移时，就是基于简化后的形状计算，避免了畸形。
    
    if (result.size() > 0) {
        std::vector<ContourPoint> cleaned;
        
        // 阈值设定：如果边长小于偏移距离的 50%，就认为它太短了，需要合并
        // 这个比例可以调节，越大越容易退化成少边形，形状越稳定
        double mergeThreshold = std::abs(distance) * 0.5;
        
        // 我们遍历所有点，只有当当前点与上一个保留点的距离大于阈值时，才保留
        // 注意：第一个点总是保留
        cleaned.push_back(result[0]);
        
        // 存储原始的偏移直线（Point + Dir），用于后续的交点计算
        // result[i] 是 offsetLines[i-1] 和 offsetLines[i] 的交点
        // 我们需要重新构建这些直线信息
        // 实际上 result[i] 就是 offset1/offset2 的交点。
        // 但为了简单起见，我们假设 result[i] 代表了连接 edge[i] 和 edge[i-1] 的顶点。
        // 如果我们要移除 result[i] 和 result[i+1] 之间的短边，实际上是移除了 edge[i]。
        // 我们需要找到 edge[i-1] 和 edge[i+1] 的交点。
        
        // 由于没有存储 Line 对象，我们通过几何关系反推或重新计算可能太复杂。
        // 一个简单的替代方案是：既然我们知道 result[i] 是 edge[i-1] 和 edge[i] 的交点，
        // 且 edge[i] 很短，意味着 edge[i-1] 和 edge[i+1] 也很接近。
        // 实际上，如果 edge[i] 很短，说明 result[i] 和 result[i+1] 很近。
        // result[i] = intersect(L_{i-1}, L_i)
        // result[i+1] = intersect(L_i, L_{i+1})
        // 我们想跳过 L_i，直接求 intersect(L_{i-1}, L_{i+1})。
        
        // 为了实现这一点，我们需要保留上一条有效的长边。
        // `cleaned.back()` 实际上是上一个有效交点。
        // 我们需要知道它是哪两条直线的交点。
        
        // 让我们采用一种更直接的方法：在第一遍循环中，只存储有效的“长边”，然后计算这些长边的交点。
        // 这里的“长边”是指 result[i] 到 result[i+1] 之间的距离足够长的边。
        
        // 1. 识别长边
        std::vector<int> longEdgeIndices;
        int nRes = result.size();
        for (int i = 0; i < nRes; i++) {
            ContourPoint p_curr = result[i];
            ContourPoint p_next = result[(i + 1) % nRes];
            if (p_curr.distance(p_next) > mergeThreshold) {
                longEdgeIndices.push_back(i);
            }
        }
        
        // 如果长边太少，说明整个多边形都很小
        if (longEdgeIndices.size() < 3) {
            return std::vector<ContourPoint>();
        }
        
        // 2. 重新计算长边之间的交点
        // 这里的 i 是 offsetPolygon 循环中的索引，对应第 i 条边
        // 我们需要重新获取第 i 条边的偏移直线参数
        // 为了避免重复计算，我们可以把直线参数存起来，或者在这里重新算一遍
        
        cleaned.clear(); // 清空，重新填充
        
        int nLong = longEdgeIndices.size();
        for (int k = 0; k < nLong; k++) {
            int idx1 = longEdgeIndices[k];           // 当前长边
            int idx2 = longEdgeIndices[(k + 1) % nLong]; // 下一条长边
            
            // 我们需要计算 edge[idx1] 和 edge[idx2] 的交点
            // edge[idx1] 是原多边形第 idx1 条边的偏移线
            
            // 获取 Edge 1 参数
            ContourPoint p1_curr = polygon[idx1];
            ContourPoint p1_next = polygon[(idx1 + 1) % n];
            ContourPoint v1 = (p1_next - p1_curr).normalized();
            ContourPoint n1(-v1.y, v1.x);
            ContourPoint l1_pt = p1_curr + n1 * actualDistance; // 直线上一点
            
            // 获取 Edge 2 参数
            ContourPoint p2_curr = polygon[idx2];
            ContourPoint p2_next = polygon[(idx2 + 1) % n];
            ContourPoint v2 = (p2_next - p2_curr).normalized();
            ContourPoint n2(-v2.y, v2.x);
            ContourPoint l2_pt = p2_curr + n2 * actualDistance; // 直线上一点
            
            // 计算 l1 和 l2 的交点
            bool intersects;
            ContourPoint intersection = lineIntersection(
                l1_pt, l1_pt + v1,
                l2_pt, l2_pt + v2,
                intersects
            );
            
            if (intersects) {
                 // 检查交点合理性 (可选)
                 cleaned.push_back(intersection);
            } else {
                // 平行 (不应该发生，除非两条长边平行)
                // 如果平行，取中点连接
                cleaned.push_back((result[idx1] + result[(idx2 + 1) % nRes]) * 0.5); 
            }
        }
        
        return cleaned;
    }
    
    return result;
}

// 生成等高线
std::vector<std::vector<ContourPoint>> generateContours(const std::vector<ContourPoint>& polygon, double w, double min_layer_area_ratio = 0.1) {
    std::vector<std::vector<ContourPoint>> contours;
    std::vector<ContourPoint> currentPolygon = polygon;
    double offsetDistance = 0.0;
    
    contours.push_back(currentPolygon);
    
    int maxLayers = 1000;
    for (int layer = 0; layer < maxLayers; layer++) {
        offsetDistance += w;
        std::vector<ContourPoint> nextPolygon = offsetPolygon(currentPolygon, w);
        
        double currentArea = polygonArea(currentPolygon);
        double nextArea = polygonArea(nextPolygon);
        
        if (nextPolygon.size() < 3 || nextArea < w * w || nextArea / currentArea < min_layer_area_ratio) {
            break;
        }
        
        contours.push_back(nextPolygon);
        currentPolygon = nextPolygon;
    }
    
    return contours;
}

// 判断点是否在线段上
bool isPointOnSegment(const ContourPoint& p, const ContourPoint& a, const ContourPoint& b, double epsilon = 1e-5) {
    // 检查是否共线
    double cross = (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
    if (std::abs(cross) > epsilon) return false;
    
    // 检查是否在范围内
    double dot = (p.x - a.x) * (b.x - a.x) + (p.y - a.y) * (b.y - a.y);
    if (dot < -epsilon) return false;
    
    double squaredLen = (b.x - a.x) * (b.x - a.x) + (b.y - a.y) * (b.y - a.y);
    if (dot > squaredLen + epsilon) return false;
    
    return true;
}

// 计算射线与多边形的交点（用于反向延长寻找切入点）
// rayOrigin: 射线起点 (内圈起点)
// rayDir: 射线方向 (从内圈第二个点指向内圈起点的方向，即反向延长)
// polygon: 外圈多边形
// intersection: 输出交点
// edgeIndex: 输出交点所在的边索引
bool getExtensionIntersection(const ContourPoint& rayOrigin, const ContourPoint& rayDir, 
                              const std::vector<ContourPoint>& polygon, 
                              ContourPoint& intersection, int& edgeIndex) {
    int n = polygon.size();
    double minDist = std::numeric_limits<double>::max();
    bool found = false;
    
    for (int i = 0; i < n; i++) {
        ContourPoint p1 = polygon[i];
        ContourPoint p2 = polygon[(i + 1) % n];
        
        // 计算射线 (rayOrigin, rayDir) 与 线段 (p1, p2) 的交点
        // 射线方程: P = rayOrigin + t * rayDir (t > 0)
        // 线段方程: P = p1 + u * (p2 - p1) (0 <= u <= 1)
        
        ContourPoint v1 = rayOrigin - p1;
        ContourPoint v2 = p2 - p1;
        ContourPoint v3 = ContourPoint(-rayDir.y, rayDir.x); // 射线的法向量
        
        double dot = v2.x * v3.x + v2.y * v3.y;
        
        // 平行
        if (std::abs(dot) < 1e-10) continue;
        
        double t1 = (v2.x * v1.y - v2.y * v1.x) / dot; // 对应射线参数 t? No, check logic.
        // 使用叉积法求解
        // P = O + t*D = A + u*(B-A)
        // O - A + t*D = u*(B-A)
        // (O-A) x (B-A) + t * D x (B-A) = 0
        // t = ((A-O) x (B-A)) / (D x (B-A))
        
        double cross_D_edge = rayDir.cross(v2);
        if (std::abs(cross_D_edge) < 1e-10) continue; // 平行
        
        double t = (p1 - rayOrigin).cross(v2) / cross_D_edge;
        double u = (p1 - rayOrigin).cross(rayDir) / cross_D_edge;
        
        if (t > 1e-5 && u >= -1e-5 && u <= 1.0 + 1e-5) {
            // 找到有效交点
            if (t < minDist) {
                minDist = t;
                intersection = rayOrigin + rayDir * t;
                edgeIndex = i;
                found = true;
            }
        }
    }
    
    return found;
}

// 为单个等高线生成闭环路径（支持在指定切点停止）
// contour: 轮廓点
// startIndex: 轮廓遍历起点索引
// stopAtCutPoint: 是否在切点停止
// cutPoint: 切点坐标
// cutEdgeIndex: 切点所在的边索引
std::vector<ContourPoint> generateContourPath(const std::vector<ContourPoint>& contour, int startIndex, 
                                              bool stopAtCutPoint, const ContourPoint& cutPoint, int cutEdgeIndex) {
    int n = contour.size();
    if (n < 3) return contour;
    
    std::vector<ContourPoint> path;
    path.reserve(n + 2);
    
    // 遍历一圈（最多 n+1 个点，回到起点）
    // 但是我们需要在遇到 cutPoint 时停止
    
    // 逻辑：
    // 从 startIndex 开始遍历边 (startIndex -> startIndex+1), (startIndex+1 -> startIndex+2)...
    // 检查当前边是否是 cutEdgeIndex
    // 如果是，且我们需要停止，则加入该边的起点，加入 cutPoint，然后结束
    
    bool cutFound = false;
    
    for (int i = 0; i < n; i++) {
        int currIdx = (startIndex + i) % n;
        int nextIdx = (startIndex + i + 1) % n;
        
        // 添加当前点
        path.push_back(contour[currIdx]);
        
        // 检查当前边 (currIdx -> nextIdx) 是否是切出边
        if (stopAtCutPoint && currIdx == cutEdgeIndex) {
            // 我们到达了切出边
            // 检查 cutPoint 是否真的在这条边上（或者非常接近）
            // 为了鲁棒性，我们假设它就在这条边上（由 getExtensionIntersection 保证）
            
            // 添加切点
            // 注意：如果切点和 currIdx 非常近（比如就在起点），我们可能已经加过了，或者需要更新
            // 如果切点和 nextIdx 非常近，我们加了切点后就不用加 nextIdx 了
            
            if (cutPoint.distance(contour[currIdx]) > 1e-5) {
                path.push_back(cutPoint);
            }
            
            cutFound = true;
            break; // 停止遍历
        }
        
        // 如果是最后一次循环（回到起点），且没被 cut 打断，就不需要再处理了
        // 因为 path.push_back(contour[currIdx]) 已经处理了闭合点
        if (i == n) break;
    }
    
    // 如果没找到切点（异常情况），或者不需要切点，正常返回完整闭环
    return path;
}

// 寻找两个等高线间的最邻近点
std::pair<int, double> findNearestPoint(const std::vector<ContourPoint>& contour, const ContourPoint& fromPoint) {
    int nearestIndex = 0;
    double minDistance = std::numeric_limits<double>::max();
    
    for (size_t i = 0; i < contour.size(); i++) {
        double dx = fromPoint.x - contour[i].x;
        double dy = fromPoint.y - contour[i].y;
        double dist = dx * dx + dy * dy;
        if (dist < minDistance) {
            minDistance = dist;
            nearestIndex = i;
        }
    }
    
    return std::make_pair(nearestIndex, std::sqrt(minDistance));
}

// 生成等高线间的连接路径
std::vector<ContourPoint> generateConnectionPath(const ContourPoint& fromPoint, const ContourPoint& toPoint, double stepSize) {
    std::vector<ContourPoint> path;
    double distance = fromPoint.distance(toPoint);
    
    if (distance < stepSize) {
        path.push_back(toPoint);
    } else {
        int numSteps = static_cast<int>(std::ceil(distance / stepSize));
        for (int i = 1; i <= numSteps; i++) {
            double t = static_cast<double>(i) / numSteps;
            ContourPoint point(
                fromPoint.x + t * (toPoint.x - fromPoint.x),
                fromPoint.y + t * (toPoint.y - fromPoint.y)
            );
            path.push_back(point);
        }
    }
    
    return path;
}

// 优化路径：移除过于接近的点
std::vector<ContourPoint> optimizePath(const std::vector<ContourPoint>& path, double minDistance) {
    if (path.size() < 2) return path;
    
    std::vector<ContourPoint> optimized;
    optimized.push_back(path[0]);
    
    for (size_t i = 1; i < path.size(); i++) {
        const ContourPoint& last = optimized.back();
        double dist = last.distance(path[i]);
        
        if (dist >= minDistance) {
            optimized.push_back(path[i]);
        }
    }
    
    // 如果路径不是闭合的，添加闭合点
    // if (optimized.size() > 2) {
    //     const ContourPoint& first = optimized[0];
    //     const ContourPoint& last = optimized.back();
    //     if (first.distance(last) > minDistance * 2.0) {
    //         optimized.push_back(first);
    //     }
    // }
    
    return optimized;
}

// 多边形往复式路径规划
std::vector<ContourPoint> generatePolygonBoustrophedonPath(const std::vector<ContourPoint>& polygon, double w) {
    if (polygon.size() < 3) return std::vector<ContourPoint>();
    
    // 1. 初始化路径
    std::vector<ContourPoint> final_path;
    
    // 2. 使用原始多边形作为填充区域 (User Requirement: 第二阶段覆盖范围与第一阶段一样大)
    // 不再进行内缩，直接对 polygon 进行往复式规划，确保填充满整个区域
    std::vector<ContourPoint> innerPolygon = polygon;
    
    if (innerPolygon.size() < 3) {
        ROS_WARN("Polygon too small for boustrophedon fill! Returning empty path.");
        return final_path;
    }
    
    // 3. 计算旋转角度：基于最外圈的 orientation (polygon[0] -> polygon[1])
    // 这样保证内部扫描线方向与外圈第一条边平行
    ContourPoint p0_outer = polygon[0];
    ContourPoint p1_outer = polygon[1];
    double angle = std::atan2(p1_outer.y - p0_outer.y, p1_outer.x - p0_outer.x);
    
    // 旋转参数 (旋转 -angle)
    double c = std::cos(-angle);
    double s = std::sin(-angle);
    
    auto rotatePoint = [&](const ContourPoint& p, double cos_v, double sin_v) {
        return ContourPoint(p.x * cos_v - p.y * sin_v, p.x * sin_v + p.y * cos_v);
    };
    
    // 4. 旋转 innerPolygon 到对齐坐标系 (用于生成扫描线)
    std::vector<ContourPoint> rotatedInnerPoly;
    rotatedInnerPoly.reserve(innerPolygon.size());
    double min_y = std::numeric_limits<double>::max();
    double max_y = std::numeric_limits<double>::lowest();
    
    for (const auto& p : innerPolygon) {
        ContourPoint p_rot = rotatePoint(p, c, s);
        rotatedInnerPoly.push_back(p_rot);
        if (p_rot.y < min_y) min_y = p_rot.y;
        if (p_rot.y > max_y) max_y = p_rot.y;
    }
    
    // 5. 生成扫描线
    // 确定扫描起始 Y：为了与外圈平滑连接，我们应该从靠近外圈结束点（polygon[0]）的位置开始
    // 外圈结束于 polygon[0]。我们计算 polygon[0] 对应的内部点位置
    // 简单起见，我们使用 innerPolygon[0] 作为参考（它通常对应 polygon[0] 的 offset）
    ContourPoint p0_inner = innerPolygon[0];
    ContourPoint p0_inner_rot = rotatePoint(p0_inner, c, s);
    
    // 确定扫描基准线 y_base
    double y_base = p0_inner_rot.y;
    
    // 确定扫描方向 (y_step)
    // 检查多边形主体是在 y_base 的上方还是下方
    double y_step = w;
    if ((max_y - y_base) < (y_base - min_y)) {
        // 主体在下方
        y_step = -w;
    }
    
    // 收集所有扫描行的线段
    std::vector<std::vector<ContourPoint>> all_rows;
    
    // 估算最大行数防止死循环
    int max_lines = static_cast<int>(std::ceil((max_y - min_y) / w)) + 5;
    
    for (int i = 0; i < max_lines; i++) {
        double y = y_base + i * y_step;
        
        if (y_step > 0 && y > max_y + 1e-3) break;
        if (y_step < 0 && y < min_y - 1e-3) break;
        
        // 寻找交点
        std::vector<double> intersections;
        int n = rotatedInnerPoly.size();
        for (int j = 0; j < n; j++) {
            ContourPoint a = rotatedInnerPoly[j];
            ContourPoint b = rotatedInnerPoly[(j + 1) % n];
            
            // 简单的扫描线相交检测
            if ((a.y <= y && b.y > y) || (b.y <= y && a.y > y)) {
                if (std::abs(b.y - a.y) > 1e-9) {
                    double x = a.x + (y - a.y) * (b.x - a.x) / (b.y - a.y);
                    intersections.push_back(x);
                }
            }
            // 特殊情况：边水平且重合于扫描线
            // 对于第一行 (i=0)，通常对应 innerPolygon 的第一条边
            else if (std::abs(a.y - y) < 1e-5 && std::abs(b.y - y) < 1e-5) {
                 intersections.push_back(a.x);
                 intersections.push_back(b.x);
            }
        }
        
        std::sort(intersections.begin(), intersections.end());
        auto last = std::unique(intersections.begin(), intersections.end(), [](double a, double b){
            return std::abs(a - b) < 1e-5;
        });
        intersections.erase(last, intersections.end());
        
        // 生成该行的线段
        std::vector<ContourPoint> row_segments;
        for (size_t k = 0; k + 1 < intersections.size(); k += 2) {
            row_segments.push_back(ContourPoint(intersections[k], y));
            row_segments.push_back(ContourPoint(intersections[k+1], y));
        }
        
        if (!row_segments.empty()) {
            all_rows.push_back(row_segments);
        }
    }
    
    // 6. 连接所有行 (使用贪婪策略)
    std::vector<ContourPoint> path_rot;
    ContourPoint currentPos = p0_inner_rot; // 虚拟起点
    
    // 强制第一行方向：必须包含 polygon[0] -> polygon[1] 的方向
    // 即 X 轴正方向 (因为我们把 polygon[0]->polygon[1] 旋转到了 X 轴)
    if (!all_rows.empty()) {
        std::vector<ContourPoint>& first_row = all_rows[0];
        
        // 我们希望方向是 Left -> Right (X 增大的方向)
        // first_row 默认是 x_min -> x_max
        // 所以默认就是 Left -> Right，不需要反转
        // 除非 polygon[0]->polygon[1] 本身方向有问题？
        // 我们旋转角度是 atan2(dy, dx)，所以旋转后该向量变为 (R, 0) 其中 R>0
        // 所以一定是 X 正方向。
        
        // 但是为了保险，我们检查 row 的方向
        if (first_row.front().x > first_row.back().x) {
             // 如果存储顺序反了（不应该发生，因为我们是 sort 过的），或者是想要反向
             std::reverse(first_row.begin(), first_row.end());
        }
        
        path_rot.insert(path_rot.end(), first_row.begin(), first_row.end());
        currentPos = first_row.back();
    }

    for (size_t i = 1; i < all_rows.size(); i++) {
        std::vector<ContourPoint>& row = all_rows[i];
        if (row.empty()) continue;
        
        // 贪婪选择最近端点
        double dist_to_left = currentPos.distance(row.front());
        double dist_to_right = currentPos.distance(row.back());
        
        if (dist_to_left <= dist_to_right) {
            // 从左向右
            path_rot.insert(path_rot.end(), row.begin(), row.end());
            currentPos = row.back();
        } else {
            // 从右向左
            std::reverse(row.begin(), row.end());
            path_rot.insert(path_rot.end(), row.begin(), row.end());
            currentPos = row.back();
        }
    }
    
    // 7. 反向旋转，并添加到最终路径
    // cos(angle) = c, sin(angle) = -s
    double c_inv = c;
    double s_inv = -s;
    
    for (const auto& p : path_rot) {
        final_path.push_back(rotatePoint(p, c_inv, s_inv));
    }
    
    return final_path;
}

// ============================================================
// 【新增】外接矩形结构体
// ============================================================
struct BoundingRect {
    std::vector<ContourPoint> corners; // 4个角点（世界坐标，顺序：左下、右下、右上、左上）
    double angle;   // 对齐的旋转角（弧度）
    double width;   // 矩形宽度
    double height;  // 矩形高度
};

// ============================================================
// 【新增】计算旋转最小外接矩形（对齐多边形第一条边方向）
// ============================================================
BoundingRect computeMinBoundingRect(const std::vector<ContourPoint>& polygon) {
    BoundingRect result;
    if (polygon.size() < 2) return result;

    double angle = std::atan2(polygon[1].y - polygon[0].y,
                              polygon[1].x - polygon[0].x);
    result.angle = angle;

    double cosA = std::cos(-angle), sinA = std::sin(-angle);
    auto rotPt = [&](const ContourPoint& p) {
        return ContourPoint(p.x * cosA - p.y * sinA,
                            p.x * sinA + p.y * cosA);
    };

    double minX = std::numeric_limits<double>::max(), maxX = std::numeric_limits<double>::lowest();
    double minY = std::numeric_limits<double>::max(), maxY = std::numeric_limits<double>::lowest();
    for (const auto& p : polygon) {
        ContourPoint r = rotPt(p);
        minX = std::min(minX, r.x); maxX = std::max(maxX, r.x);
        minY = std::min(minY, r.y); maxY = std::max(maxY, r.y);
    }

    result.width  = maxX - minX;
    result.height = maxY - minY;

    std::vector<ContourPoint> cornersRot = {
        ContourPoint(minX, minY),
        ContourPoint(maxX, minY),
        ContourPoint(maxX, maxY),
        ContourPoint(minX, maxY)
    };

    double cosInv = std::cos(angle), sinInv = std::sin(angle);
    for (const auto& c : cornersRot) {
        result.corners.push_back(ContourPoint(
            c.x * cosInv - c.y * sinInv,
            c.x * sinInv + c.y * cosInv
        ));
    }
    return result;
}

// ============================================================
// 【新增】在外接矩形内生成 S 弯（往复式）路径
// rect：外接矩形（4角点）
// w：扫描行间距
// startPos：希望从最近的哪个点开始（通常是螺旋路径末尾）
// ============================================================
std::vector<ContourPoint> generateSBendPath(
        const BoundingRect& rect,
        const std::vector<ContourPoint>& clipPolygon,
        double w, const ContourPoint& startPos) {

    if (rect.corners.size() < 4 || w <= 0) return {};

    double angle  = rect.angle;
    double cosA   = std::cos(-angle), sinA = std::sin(-angle);
    double cosInv = std::cos(angle),  sinInv = std::sin(angle);

    auto toRot = [&](const ContourPoint& p) {
        return ContourPoint(p.x * cosA - p.y * sinA,
                            p.x * sinA + p.y * cosA);
    };
    auto toWorld = [&](const ContourPoint& p) {
        return ContourPoint(p.x * cosInv - p.y * sinInv,
                            p.x * sinInv + p.y * cosInv);
    };

    double minX = std::numeric_limits<double>::max(), maxX = std::numeric_limits<double>::lowest();
    double minY = std::numeric_limits<double>::max(), maxY = std::numeric_limits<double>::lowest();
    for (const auto& c : rect.corners) {
        ContourPoint r = toRot(c);
        minX = std::min(minX, r.x); maxX = std::max(maxX, r.x);
        minY = std::min(minY, r.y); maxY = std::max(maxY, r.y);
    }

    // Transform clip polygon vertices to rotated coordinate system
    std::vector<ContourPoint> clipRot;
    if (!clipPolygon.empty()) {
        clipRot.reserve(clipPolygon.size());
        for (const auto& p : clipPolygon) {
            clipRot.push_back(toRot(p));
        }
    }

    // For a given scan-line y, compute x-intercepts with the clip polygon boundary
    // using the standard scanline algorithm, then clip the row to [x_in, x_out] intervals.
    auto clipRowToPolygon = [&](double y, double rowMinX, double rowMaxX)
            -> std::vector<std::pair<double, double>> {
        int n = static_cast<int>(clipRot.size());
        std::vector<double> xs;
        for (int i = 0; i < n; i++) {
            const ContourPoint& a = clipRot[i];
            const ContourPoint& b = clipRot[(i + 1) % n];
            double ay = a.y, by = b.y;
            // Edge crosses y?
            if ((ay <= y && by > y) || (by <= y && ay > y)) {
                double t = (y - ay) / (by - ay);
                xs.push_back(a.x + t * (b.x - a.x));
            }
        }
        std::sort(xs.begin(), xs.end());
        std::vector<std::pair<double, double>> intervals;
        for (int i = 0; i + 1 < static_cast<int>(xs.size()); i += 2) {
            double lo = std::max(xs[i],     rowMinX);
            double hi = std::min(xs[i + 1], rowMaxX);
            if (hi > lo + 1e-6) {
                intervals.emplace_back(lo, hi);
            }
        }
        return intervals;
    };

    ContourPoint startRot = toRot(startPos);

    double y_start = (std::abs(startRot.y - minY) <= std::abs(startRot.y - maxY))
                     ? minY : maxY;
    double y_end   = (y_start == minY) ? maxY : minY;
    double y_step  = (y_end > y_start) ? w : -w;

    std::vector<std::vector<ContourPoint>> rows;
    int max_rows = static_cast<int>(std::ceil(std::abs(y_end - y_start) / w)) + 2;

    for (int i = 0; i < max_rows; i++) {
        double y = y_start + i * y_step;
        if (y_step > 0 && y > y_end + 1e-3) break;
        if (y_step < 0 && y < y_end - 1e-3) break;

        if (!clipRot.empty()) {
            // Clip this scan line against the polygon
            auto intervals = clipRowToPolygon(y, minX, maxX);
            for (const auto& interval : intervals) {
                rows.push_back({
                    ContourPoint(interval.first,  y),
                    ContourPoint(interval.second, y)
                });
            }
        } else {
            rows.push_back({
                ContourPoint(minX, y),
                ContourPoint(maxX, y)
            });
        }
    }

    if (rows.empty()) return {};

    std::vector<ContourPoint> path;
    ContourPoint curPos = startRot;

    for (auto& row : rows) {
        double distL = curPos.distance(row[0]);
        double distR = curPos.distance(row[1]);
        if (distL > distR) std::reverse(row.begin(), row.end());

        for (const auto& p : row) {
            path.push_back(toWorld(p));
        }
        curPos = row.back();
    }

    return path;
}

// 等高线螺旋式全覆盖路径规划（新算法）
std::vector<ContourPoint> generateContourSpiralPath(const std::vector<ContourPoint>& polygon, double w, 
                                                    double min_optimization_distance = 0.3, 
                                                    double connection_step_factor = 0.5,
                                                    double min_layer_area_ratio = 0.1) {
    std::vector<std::vector<ContourPoint>> contours = generateContours(polygon, w, min_layer_area_ratio);
    
    if (contours.empty()) {
        ROS_WARN("generateContours returned empty!");
        return std::vector<ContourPoint>();
    }
    
    ROS_INFO("Generated %zu contour layers", contours.size());
    
    std::vector<ContourPoint> fullPath;
    ContourPoint centroid = polygonCentroid(polygon);
    
    // 1. 初始化外圈的“理想起点”（通常是离中心最远的点，即几何上的某个角，如左下角）
    int currentIdealStartIdx = 0;
    // double maxDist = 0.0;
    // for (size_t i = 0; i < contours[0].size(); i++) {
    //     double dx = centroid.x - contours[0][i].x;
    //     double dy = centroid.y - contours[0][i].y;
    //     double dist = dx * dx + dy * dy;
    //     if (dist > maxDist) {
    //         maxDist = dist;
    //         currentIdealStartIdx = i;
    //     }
    // }
    
    // 实际遍历的起点（对于第一层，它等于理想起点）
    int currentActualStartIdx = currentIdealStartIdx;
    
    // 遍历所有层
    for (size_t layer = 0; layer < contours.size(); layer++) {
        const std::vector<ContourPoint>& currContour = contours[layer];
        
        bool isLastLayer = (layer == contours.size() - 1);
        
        if (isLastLayer) {
            // ============================================================
            // 【修改】最后一层：判断是否为"较窄区域"
            // 若面积比 < narrow_area_threshold，则生成外接四边形并以 S 弯覆盖
            // ============================================================
            double lastArea     = polygonArea(currContour);
            double originalArea = polygonArea(contours[0]);
            const double narrow_area_threshold = 0.50; // 对大体积农机更早触发 S 弯

            bool isNarrow = (originalArea > 1e-6 &&
                             (lastArea / originalArea < narrow_area_threshold ||
                              currContour.size() < 4));

            if (isNarrow) {
                ROS_INFO("Last layer is narrow (area ratio=%.3f). Switching to S-bend path.",
                         lastArea / originalArea);

                // 1. 基于倒数第二层轮廓（prevContour）计算外接矩形，覆盖上一层螺旋内边界围成的整个剩余区域
                // 若只有一层则退化为使用当前层
                const std::vector<ContourPoint>& rectSource =
                    (layer > 0) ? contours[layer - 1] : currContour;
                BoundingRect lastBoundRect = computeMinBoundingRect(rectSource);

                // 2. S 弯起点：螺旋路径当前末尾（或最后一层起始点）
                ContourPoint sBendStart = fullPath.empty()
                    ? currContour[currentActualStartIdx % (int)currContour.size()]
                    : fullPath.back();

                // 3. 生成 S 弯路径（裁剪边界也使用 prevContour，不会超出已走过的螺旋区域）
                std::vector<ContourPoint> sBendPath =
                    generateSBendPath(lastBoundRect, rectSource, w, sBendStart);

                if (!sBendPath.empty()) {
                    ROS_INFO("S-bend path generated with %zu points for narrow last layer.",
                             sBendPath.size());
                    fullPath.insert(fullPath.end(), sBendPath.begin(), sBendPath.end());
                } else {
                    ROS_WARN("S-bend path empty, fallback to simple closed path.");
                    std::vector<ContourPoint> layerPath =
                        generateContourPath(currContour, currentActualStartIdx,
                                            false, ContourPoint(0, 0), -1);
                    fullPath.insert(fullPath.end(), layerPath.begin(), layerPath.end());
                }
            } else {
                // 非窄区域：原始简单闭合逻辑
                std::vector<ContourPoint> layerPath =
                    generateContourPath(currContour, currentActualStartIdx,
                                        false, ContourPoint(0, 0), -1);
                fullPath.insert(fullPath.end(), layerPath.begin(), layerPath.end());
            }
            break;
        }
        
        // 如果不是最后一层，我们需要寻找切入下一层的点
        const std::vector<ContourPoint>& nextContour = contours[layer + 1];
        
        // 关键修复：始终基于“理想起点”来寻找下一层的对应点，防止相位漂移
        // 这样可以保证每次切入都是发生在同一条几何边上（例如总是从底部切入）
        auto nearestNext = findNearestPoint(nextContour, currContour[currentIdealStartIdx]);
        int nextIdealStartIdx = nearestNext.first;
        
        // 下一层的“第二个点” (用于确定切入方向)
        int nextSecondIdx = (nextIdealStartIdx + 1) % nextContour.size();
        ContourPoint pNextStart = nextContour[nextIdealStartIdx];
        ContourPoint pNextSecond = nextContour[nextSecondIdx];
        
        // 计算切点 (Cut Point)
        // 射线方向：从 pNextSecond 指向 pNextStart (反向延长)
        ContourPoint rayDir = (pNextStart - pNextSecond).normalized();
        ContourPoint cutPoint;
        int cutEdgeIndex = -1;
        
        bool foundCut = getExtensionIntersection(pNextStart, rayDir, currContour, cutPoint, cutEdgeIndex);
        
        if (!foundCut) {
            ROS_WARN("Layer %zu: Could not find parallel cut point! Stopping spiral here.", layer);
            // 降级处理：生成完整一圈，然后结束
            std::vector<ContourPoint> layerPath = generateContourPath(currContour, currentActualStartIdx, false, ContourPoint(0,0), -1);
            fullPath.insert(fullPath.end(), layerPath.begin(), layerPath.end());
            
            // 直接停止生成，不再强行连接下一层
            break;
        }
        
        // 生成当前层路径，在切点处停止
        std::vector<ContourPoint> layerPath = generateContourPath(currContour, currentActualStartIdx, true, cutPoint, cutEdgeIndex);
        
        ROS_INFO("Layer %zu: Cut-in strategy applied. CutPoint: (%.2f, %.2f) on edge %d", 
                 layer, cutPoint.x, cutPoint.y, cutEdgeIndex);
        
        fullPath.insert(fullPath.end(), layerPath.begin(), layerPath.end());
        
        // 更新状态：
        // 下一层的理想起点已经计算好了 (nextIdealStartIdx)
        // 下一层的实际起点应该是“第二个点” (nextSecondIdx)
        currentIdealStartIdx = nextIdealStartIdx;
        currentActualStartIdx = nextSecondIdx;
    }
    
    ROS_INFO("Before optimization: %zu points", fullPath.size());
    std::vector<ContourPoint> optimized = optimizePath(fullPath, w * min_optimization_distance);
    ROS_INFO("After optimization: %zu points", optimized.size());
    
    return optimized;
}

// 从字符串解析边界点（格式：x1,y1;x2,y2;x3,y3;...）
std::vector<ContourPoint> BoustrophedonSTC::parseBoundaryPoints(const std::string& points_str) {
    std::vector<ContourPoint> points;
    std::stringstream ss(points_str);
    std::string token;
    
    while (std::getline(ss, token, ';')) {
        std::stringstream point_ss(token);
        std::string x_str, y_str;
        
        if (std::getline(point_ss, x_str, ',') && std::getline(point_ss, y_str, ',')) {
            try {
                double x = std::stod(x_str);
                double y = std::stod(y_str);
                
                // 关键修改：如果设置了分辨率且大于0，则将米级坐标转换为栅格坐标
                if (map_resolution_ > 0) {
                    x /= map_resolution_;
                    y /= map_resolution_;
                }
                
                points.push_back(ContourPoint(x, y));
            } catch (const std::exception& e) {
                ROS_WARN("Failed to parse point: %s", token.c_str());
            }
        }
    }
    
    return points;
}

void BoustrophedonSTC::setContourSpiralParameters(std::string path_pattern,
                                bool use_custom_boundary,
                                std::string boundary_points_str,
                                double contour_spacing,
                                double min_optimization_factor,
                                double connection_step_factor,
                                double min_layer_area_ratio,
                                int max_contour_layers,
                                double map_resolution)
{
    path_pattern_ = path_pattern;
    use_custom_boundary_ = use_custom_boundary;
    boundary_points_str_ = boundary_points_str;
    contour_spacing_ = contour_spacing;
    min_optimization_factor_ = min_optimization_factor;
    connection_step_factor_ = connection_step_factor;
    min_layer_area_ratio_ = min_layer_area_ratio;
    max_contour_layers_ = max_contour_layers;
    map_resolution_ = map_resolution;

    // Parse boundary points if needed
    if (!boundary_points_str_.empty() && use_custom_boundary_) {
        custom_boundary_points_ = parseBoundaryPoints(boundary_points_str_);
        ROS_INFO("Loaded %zu custom boundary points from parameter setter (res: %.4f)", custom_boundary_points_.size(), map_resolution_);
    } else {
        ROS_INFO("Using default grid boundary for contour spiral path (configured via setter)");
    }
}

void BoustrophedonSTC::setRobotParams(float robot_radius, float tool_radius)
{
    robot_radius_ = robot_radius;
    tool_radius_ = tool_radius;
}

void BoustrophedonSTC::initialize(std::string name, costmap_2d::Costmap2DROS* costmap_ros) 
{
    if (!initialized_)
    {
        ros::NodeHandle private_nh("~/");
        ros::NodeHandle nh, private_named_nh("~/" + name);

        plan_pub_ = private_named_nh.advertise<nav_msgs::Path>("plan", 1);
        cpp_grid_client_ = nh.serviceClient<nav_msgs::GetMap>("static_map");
        
        costmap_ros_ = costmap_ros;
        costmap_ = costmap_ros->getCostmap();

        float robot_radius_default = 0.5f;
        private_named_nh.param<float>("robot_radius", robot_radius_, robot_radius_default);
        
        float tool_radius_default = 0.5f;
        private_named_nh.param<float>("tool_radius", tool_radius_, tool_radius_default);
        
        // 添加路径模式参数
        std::string path_pattern_default = "boustrophedon"; // boustrophedon, inner_spiral, contour_spiral
        private_named_nh.param<std::string>("path_pattern", path_pattern_, path_pattern_default);
        
        // 添加等高线螺旋路径的参数
        
        // 边界点参数（格式：x1,y1;x2,y2;x3,y3;...）
        // 例如：273.21,173.21;223.21,259.81;123.21,259.81;73.21,173.21;123.21,86.60;223.21,86.60
        std::string boundary_points_default = "";
        private_named_nh.param<std::string>("boundary_points", boundary_points_str_, boundary_points_default);
        
        // 等高线间距（w）
        double contour_spacing_default = tool_radius_ * 2.0;
        private_named_nh.param<double>("contour_spacing", contour_spacing_, contour_spacing_default);
        
        // 最小优化距离因子（相对于等高线间距的比例）
        double min_optimization_factor_default = 0.3;
        private_named_nh.param<double>("min_optimization_factor", min_optimization_factor_, min_optimization_factor_default);
        
        // 连接路径步长因子
        double connection_step_factor_default = 0.5;
        private_named_nh.param<double>("connection_step_factor", connection_step_factor_, connection_step_factor_default);
        
        // 最小层面积比例（用于停止生成新等高线）
        double min_layer_area_ratio_default = 0.1;
        private_named_nh.param<double>("min_layer_area_ratio", min_layer_area_ratio_, min_layer_area_ratio_default);
        
        // 最大等高线层数
        int max_contour_layers_default = 1000;
        private_named_nh.param<int>("max_contour_layers", max_contour_layers_, max_contour_layers_default);
        
        // 是否使用自定义边界点
        private_named_nh.param<bool>("use_custom_boundary", use_custom_boundary_, false);
        
        // 解析边界点字符串
        if (!boundary_points_str_.empty() && use_custom_boundary_) {
            custom_boundary_points_ = parseBoundaryPoints(boundary_points_str_);
            ROS_INFO("Loaded %zu custom boundary points", custom_boundary_points_.size());
        } else {
            ROS_INFO("Using default grid boundary for contour spiral path");
        }
        
        initialized_ = true;
    }
}

std::list<gridNode_t> BoustrophedonSTC::boustrophedon(std::vector<std::vector<bool>> const& grid,
                                                      std::list<gridNode_t>& init,
                                                      std::vector<std::vector<bool>>& visited)
{
    // 原始boustrophedon算法实现
    int dx, dy, x2, y2, i, nRows = grid.size(), nCols = grid[0].size();
    std::list<gridNode_t> pathNodes(init);
    x2 = pathNodes.back().pos.x;
    y2 = pathNodes.back().pos.y;
    
    int robot_dir = dirWithMostSpace(x2, y2, nCols, nRows, grid, visited, point);
    
    switch (robot_dir)
    {
    case east:
        dx = +1;
        dy = 0;
        break;
    case west:
        dx = -1;
        dy = 0;
        break;
    case north:
        dx = 0;
        dy = +1;
        break;
    case south:
        dx = 0;
        dy = -1;
        break;
    default:
        ROS_ERROR(
            "Full Coverage Path Planner: NO INITIAL ROBOT DIRECTION CALCULATED. "
            "This is a logic error that must be fixed by editing boustrophedon_stc.cpp. Will travel east for now.");
        robot_dir = east;
        dx = +1;
        dy = 0;
        break;
    }

    bool done = false;
    while (!done)
    {
        // 1. drive straight until not a valid move (hit occupied cell or at end of map)
        bool hitWall = false;
        while (!hitWall)
        {
            x2 += dx;
            y2 += dy;
            if (!validMove(x2, y2, nCols, nRows, grid, visited))
            {
                hitWall = true;
                x2 = pathNodes.back().pos.x;
                y2 = pathNodes.back().pos.y;
                break;
            }
            if (!hitWall)
            {
                addNodeToList(x2, y2, pathNodes, visited);
            }
        }

        // 2. check left and right after hitting wall, then change direction
        if (robot_dir == north || robot_dir == south)
        {
            if (!validMove(x2 + 1, y2, nCols, nRows, grid, visited) &&
                !validMove(x2 - 1, y2, nCols, nRows, grid, visited))
            {
                done = true;
                break;
            }
            else if (!validMove(x2 + 1, y2, nCols, nRows, grid, visited))
            {
                x2--;
                pattern_dir_ = west;
            }
            else if (!validMove(x2 - 1, y2, nCols, nRows, grid, visited))
            {
                x2++;
                pattern_dir_ = east;
            }
            else
            {
                if (!(pattern_dir_ == east || pattern_dir_ == west))
                {
                    if (validMove(x2, y2 + 1, nCols, nRows, grid, visited))
                    {
                        pattern_dir_ = dirWithMostSpace(x2, y2, nCols, nRows, grid, visited, north);
                    }
                    else
                    {
                        pattern_dir_ = dirWithMostSpace(x2, y2, nCols, nRows, grid, visited, south);
                    }
                }
                if (pattern_dir_ == east)
                {
                    x2++;
                }
                else if (pattern_dir_ == west)
                {
                    x2--;
                }
            }

            addNodeToList(x2, y2, pathNodes, visited);

            if (robot_dir == north)
            {
                robot_dir = south;
                dy = -1;
            }
            else if (robot_dir == south)
            {
                robot_dir = north;
                dy = 1;
            }
        }
        else if (robot_dir == east || robot_dir == west)
        {
            if (!validMove(x2, y2 + 1, nCols, nRows, grid, visited) &&
                !validMove(x2, y2 - 1, nCols, nRows, grid, visited))
            {
                done = true;
                break;
            }
            else if (!validMove(x2, y2 + 1, nCols, nRows, grid, visited))
            {
                y2--;
                pattern_dir_ = south;
            }
            else if (!validMove(x2, y2 - 1, nCols, nRows, grid, visited))
            {
                y2++;
                pattern_dir_ = north;
            }
            else
            {
                if (!(pattern_dir_ == north || pattern_dir_ == south))
                {
                    if (validMove(x2 + 1, y2, nCols, nRows, grid, visited))
                    {
                        pattern_dir_ = dirWithMostSpace(x2, y2, nCols, nRows, grid, visited, east);
                    }
                    else
                    {
                        pattern_dir_ = dirWithMostSpace(x2, y2, nCols, nRows, grid, visited, west);
                    }
                }
                if (pattern_dir_ == north)
                {
                    y2++;
                }
                else if (pattern_dir_ == south)
                {
                    y2--;
                }
            }

            addNodeToList(x2, y2, pathNodes, visited);

            if (robot_dir == east)
            {
                robot_dir = west;
                dx = -1;
            }
            else if (robot_dir == west)
            {
                robot_dir = east;
                dx = 1;
            }
        }
    }
    return pathNodes;
}

std::list<gridNode_t> BoustrophedonSTC::Inner_Spiral_Path(std::vector<std::vector<bool>> const& grid,
                                                          std::list<gridNode_t>& init,
                                                          std::vector<std::vector<bool>>& visited)
{
    //nRows为列数，nCols为行数
    int dx, dy, x2, y2, i, nRows = grid.size(), nCols = grid[0].size();
    // Mountain pattern filling of the open space
    // Copy incoming list to 'end'
    std::list<gridNode_t> pathNodes(init);
    // Set starting pos
    x2 = pathNodes.back().pos.x;
    y2 = pathNodes.back().pos.y;
    // set initial direction based on space visible from initial pos
    /*/  IF GLOBAL VAR = 0*/

    //判断哪个方向出发是最好的路径，返回一个int值，东西南北之一，
    // int robot_dir = dirWithMostSpace(x2, y2, nCols, nRows, grid, visited, point); 
    enum SpiralDirection { SPIRAL_NORTH, SPIRAL_EAST, SPIRAL_SOUTH, SPIRAL_WEST };
    int current_spiral_dir = SPIRAL_NORTH;
    /*  GLOBAL VAR++*/
    /*/   if global var ==1 /*/
    // int robot_dir =

    // 初始化 dx 和 dy
    switch (current_spiral_dir) {
        case SPIRAL_NORTH: dx = 0; dy = +1; break;
        case SPIRAL_EAST:  dx = +1; dy = 0; break;
        case SPIRAL_SOUTH: dx = 0; dy = -1; break;
        case SPIRAL_WEST:  dx = -1; dy = 0; break;
    }

    bool done = false;
    while (!done) {
        // 1. 沿当前方向移动至障碍物/边界
        bool hitWall = false;
        while (!hitWall) {
            x2 += dx;
            y2 += dy;
            if (!validMove(x2, y2, nCols, nRows, grid, visited)) {
                hitWall = true;
                x2 -= dx;  // 回退到最后一个有效点
                y2 -= dy;
                break;
            }

            // Check for duplicates in the current pathNodes list
            bool is_duplicate = false;
            for (const auto& node : pathNodes) {
                if (node.pos.x == x2 && node.pos.y == y2) {
                    is_duplicate = true;
                    break;
                }
            }

            if (is_duplicate) {
                ROS_WARN("Inner_Spiral_Path: Duplicate point detected at (%d, %d). Stopping generation.", x2, y2);
                done = true;
                break;
            }

            addNodeToList(x2, y2, pathNodes, visited);
        }
        
        if (done) break;

        // 每次转向后更新方向
        switch (current_spiral_dir) {
            case SPIRAL_NORTH:
                dx = +1; dy = 0;  // 北→东
                current_spiral_dir = SPIRAL_EAST;
                break;
            case SPIRAL_EAST:
                dx = 0; dy = -1;  // 东→南
                current_spiral_dir = SPIRAL_SOUTH;
                break;
            case SPIRAL_SOUTH:
                dx = -1; dy = 0;  // 南→西
                current_spiral_dir = SPIRAL_WEST;
                break;
            case SPIRAL_WEST:
                dx = 0; dy = +1;  // 西→北
                current_spiral_dir = SPIRAL_NORTH;
                break;
        }

        // 3. 检查新方向是否可行
        int next_x = x2 + dx;
        int next_y = y2 + dy;
        if (!validMove(next_x, next_y, nCols, nRows, grid, visited)) {
            // 尝试所有方向是否被阻塞
            bool all_blocked = true;
            const int dirs[4][2] = {{0,+1}, {+1,0}, {0,-1}, {-1,0}};  // 北,东,南,西
            for (int i = 0; i < 4; ++i) {
                int test_x = x2 + dirs[i][0];
                int test_y = y2 + dirs[i][1];
                if (validMove(test_x, test_y, nCols, nRows, grid, visited)) {
                    all_blocked = false;
                    break;
                }
            }
            if (all_blocked) done = true;
        }
    }
    return pathNodes;
}

// 修改后的Contour_Spiral_Path函数，添加参数支持
std::list<gridNode_t> BoustrophedonSTC::Contour_Spiral_Path(std::vector<std::vector<bool>> const& grid,
                                                            std::list<gridNode_t>& init,
                                                            std::vector<std::vector<bool>>& visited)
{
    int nRows = grid.size(), nCols = grid[0].size();
    std::list<gridNode_t> pathNodes(init);
    
    std::vector<ContourPoint> polygon;
    
    // 根据参数选择使用自定义边界点还是默认网格边界
    if (use_custom_boundary_ && !custom_boundary_points_.empty()) {
        ROS_INFO("Using custom boundary points for contour spiral path");
        polygon = custom_boundary_points_;
    } else {
        ROS_INFO("Using grid boundary for contour spiral path");
        // 使用默认的网格边界（矩形）
        polygon.push_back(ContourPoint(0, 0));
        polygon.push_back(ContourPoint(nCols, 0));
        polygon.push_back(ContourPoint(nCols, nRows));
        polygon.push_back(ContourPoint(0, nRows));
    }
    
    // 使用可调节的参数
    double w = contour_spacing_;
    
    // 生成等高线螺旋路径，传入所有可调节参数
    std::vector<ContourPoint> contourPath = generateContourSpiralPath(polygon, w, 
                                                                      min_optimization_factor_,
                                                                      connection_step_factor_,
                                                                      min_layer_area_ratio_);
    
    ROS_INFO("Generated %zu raw points from Contour Spiral algorithm", contourPath.size());
    if (contourPath.empty()) {
        ROS_WARN("Contour Spiral algorithm returned 0 points!");
        return pathNodes;
    }

    // 将ContourPoint转换为gridNode_t
    for (const auto& point : contourPath) {
        // 安全检查：坐标是否正常？
        if (std::isnan(point.x) || std::isnan(point.y) || std::isinf(point.x) || std::isinf(point.y)) {
            ROS_WARN("Skipping invalid point: (%.2f, %.2f)", point.x, point.y);
            continue;
        }

        int x = static_cast<int>(point.x);
        int y = static_cast<int>(point.y);
        
        // 确保坐标在网格范围内
        if (x >= 0 && x < nCols && y >= 0 && y < nRows) {
            // 检查是否为有效移动
            // 注意：对于自定义边界模式，grid 可能全是 false (未被占据)，或者根本没被正确初始化
            // 如果我们确信边界点是合法的，可能不需要 validMove 检查，或者需要确保 grid 是全空的
            if (use_custom_boundary_) {
                // 在自定义边界模式下，我们直接信任生成的路径，只做基本的边界检查
                addNodeToList(x, y, pathNodes, visited);
            } else if (validMove(x, y, nCols, nRows, grid, visited)) {
                addNodeToList(x, y, pathNodes, visited);
            }
        } else {
             ROS_DEBUG("Point out of grid bounds: (%d, %d) vs Grid(%d, %d)", x, y, nCols, nRows);
        }
    }
    
    ROS_INFO("Contour spiral path generated with %zu points (after grid filtering)", pathNodes.size());
    
    return pathNodes;
}

std::vector<geometry_msgs::Point> BoustrophedonSTC::getContourSpiralPath() {
    std::vector<geometry_msgs::Point> result_path;
    std::vector<ContourPoint> polygon;

    // 1. 准备边界多边形 (已经由 parseBoundaryPoints 转换为栅格坐标)
    if (use_custom_boundary_ && !custom_boundary_points_.empty()) {
        ROS_INFO("getContourSpiralPath: Using custom boundary (%zu points)", custom_boundary_points_.size());
        polygon = custom_boundary_points_;
    } else {
        ROS_WARN("getContourSpiralPath: No custom boundary provided, using default (0,0) to (10,10) grid");
        // 简单的默认矩形
        polygon.push_back(ContourPoint(0, 0));
        polygon.push_back(ContourPoint(100, 0));
        polygon.push_back(ContourPoint(100, 100));
        polygon.push_back(ContourPoint(0, 100));
    }

    // 2. 准备参数 (转换为栅格空间)
    double w = contour_spacing_;
    if (map_resolution_ > 0) {
        w /= map_resolution_; // 米 -> 栅格
    } else {
        ROS_WARN("Map resolution is 0 or negative! Assuming 1.0");
        map_resolution_ = 1.0; // 防止除零
    }

    ROS_INFO("Generating spiral with spacing: %.2f (grid units), res: %.4f", w, map_resolution_);

    // 3. 生成螺旋路径 (几何计算)
    std::vector<ContourPoint> spiral_points;
    
    if (path_pattern_ == "polygon_boustrophedon") {
        ROS_INFO("Generating polygon boustrophedon path...");
        spiral_points = generatePolygonBoustrophedonPath(polygon, w);
    } else {
        spiral_points = generateContourSpiralPath(polygon, w, 
                                                  min_optimization_factor_,
                                                  connection_step_factor_,
                                                  min_layer_area_ratio_);
    }

    if (spiral_points.empty()) {
        ROS_WARN("Generated path is empty!");
        return result_path;
    }

    // 4. 转换回米级坐标 (栅格 -> 米)
    for (const auto& p : spiral_points) {
        // 安全检查
        if (std::isnan(p.x) || std::isnan(p.y)) continue;

        geometry_msgs::Point pt;
        pt.x = p.x * map_resolution_;
        pt.y = p.y * map_resolution_;
        pt.z = 0;
        result_path.push_back(pt);
    }
    
    ROS_INFO("Converted %zu spiral points to world coordinates", result_path.size());
    return result_path;
}

std::list<gridNode_t> BoustrophedonSTC::Contour_Boustrophedon_Path(std::vector<std::vector<bool>> const& grid,
                                                                   std::list<gridNode_t>& init,
                                                                   std::vector<std::vector<bool>>& visited)
{
    int nRows = grid.size(), nCols = grid[0].size();
    std::list<gridNode_t> pathNodes(init);
    
    std::vector<ContourPoint> polygon;
    
    // 1. 获取边界
    if (use_custom_boundary_ && !custom_boundary_points_.empty()) {
        ROS_INFO("Using custom boundary points for polygon boustrophedon path");
        polygon = custom_boundary_points_;
    } else {
        ROS_INFO("Using grid boundary for polygon boustrophedon path");
        polygon.push_back(ContourPoint(0, 0));
        polygon.push_back(ContourPoint(nCols, 0));
        polygon.push_back(ContourPoint(nCols, nRows));
        polygon.push_back(ContourPoint(0, nRows));
    }
    
    // 2. 生成路径
    double w = contour_spacing_;
    std::vector<ContourPoint> boustrophedonPath = generatePolygonBoustrophedonPath(polygon, w);
    
    ROS_INFO("Generated %zu raw points from Polygon Boustrophedon algorithm", boustrophedonPath.size());
    
    if (boustrophedonPath.empty()) {
        ROS_WARN("Polygon Boustrophedon algorithm returned 0 points!");
        return pathNodes;
    }
    
    // 3. 转换为 gridNode_t 并添加到路径
    for (const auto& point : boustrophedonPath) {
        if (std::isnan(point.x) || std::isnan(point.y) || std::isinf(point.x) || std::isinf(point.y)) {
             continue;
        }
        
        int x = static_cast<int>(point.x);
        int y = static_cast<int>(point.y);
        
        if (x >= 0 && x < nCols && y >= 0 && y < nRows) {
            if (use_custom_boundary_) {
                 addNodeToList(x, y, pathNodes, visited);
            } else if (validMove(x, y, nCols, nRows, grid, visited)) {
                addNodeToList(x, y, pathNodes, visited);
            }
        }
    }
    
    return pathNodes;
}

std::list<Point_t> BoustrophedonSTC::boustrophedon_stc(std::vector<std::vector<bool>> const& grid, Point_t& init,
                                                       int& multiple_pass_counter, int& visited_counter)
{
    int x, y, nRows = grid.size(), nCols = grid[0].size();
    pattern_dir_ = point;
    multiple_pass_counter = 0;
    visited_counter = 0;

    std::vector<std::vector<bool>> visited = grid;
    x = init.x;
    y = init.y;

    std::list<gridNode_t> pathNodes;
    std::list<Point_t> fullPath;

    addNodeToList(x, y, pathNodes, visited);
    std::list<Point_t> goals = map_2_goals(visited, eNodeOpen);  
    std::cout << "Goals Left: " << goals.size() << std::endl;

#ifdef DEBUG_PLOT
    ROS_INFO("Grid before walking is: ");
    printGrid(grid, visited, fullPath);
#endif

    while (goals.size() != 0)
    {
        // 根据路径模式选择不同的路径生成算法
        if (path_pattern_ == "inner_spiral") {
            pathNodes = Inner_Spiral_Path(grid, pathNodes, visited);
        } else if (path_pattern_ == "contour_spiral") {
            pathNodes = Contour_Spiral_Path(grid, pathNodes, visited);
        } else if (path_pattern_ == "polygon_boustrophedon") {
            pathNodes = Contour_Boustrophedon_Path(grid, pathNodes, visited);
        } else {
            // 默认使用boustrophedon算法
            pathNodes = boustrophedon(grid, pathNodes, visited);
        }

#ifdef DEBUG_PLOT
        ROS_INFO("Visited grid updated after path generation:");
        printGrid(grid, visited, pathNodes, PatternStart, pathNodes.back());
#endif

        for (auto it = pathNodes.begin(); it != pathNodes.end(); ++it)
        {
            Point_t newPoint = {it->pos.x, it->pos.y};
            
            // Prevent duplicate points when merging paths
            if (!fullPath.empty() && fullPath.back().x == newPoint.x && fullPath.back().y == newPoint.y)
            {
                continue;
            }

            visited_counter++;
            fullPath.push_back(newPoint);
        }

        goals = map_2_goals(visited, eNodeOpen);
        pathNodes.erase(pathNodes.begin(), --(pathNodes.end()));
        visited_counter--;

        // Disable backtracking for spiral patterns to prevent connecting end to start
        if (path_pattern_ == "inner_spiral" || path_pattern_ == "contour_spiral" || path_pattern_ == "polygon_boustrophedon") {
            ROS_INFO("Spiral pattern single pass completed. Stopping to prevent backtracking.");
            break;
        }

        bool resign = a_star_to_open_space(grid, pathNodes.back(), 1, visited, goals, pathNodes);
        if (resign)
        {
            ROS_WARN(
                "A_star_to_open_space is resigning! This may be due to the open cells outside of the "
                "obstacle boundary. Goals Left: %lu",
                goals.size());
            break;
        }

        for (auto it = pathNodes.begin(); it != pathNodes.end(); ++it)
        {
            if (visited[it->pos.y][it->pos.x])
            {
                multiple_pass_counter++;
            }
            visited[it->pos.y][it->pos.x] = eNodeVisited;
        }
        if (pathNodes.size() > 0)
        {
            multiple_pass_counter--;
        }

#ifdef DEBUG_PLOT
        ROS_INFO("Grid with path marked as visited is:");
        gridNode_t PatternStart = pathNodes.back();
        printGrid(grid, visited, pathNodes, pathNodes.front(), pathNodes.back());
#endif
    }
    return fullPath;
}

bool BoustrophedonSTC::makePlan(const geometry_msgs::PoseStamped& start, const geometry_msgs::PoseStamped& goal,
                                std::vector<geometry_msgs::PoseStamped>& plan)
{
    if (!initialized_)
    {
        ROS_ERROR(
            "This planner has not been initialized yet, but it is being used, please call initialize() before use");
        return false;
    }
    else
    {
        ROS_INFO("Initialized! Using path pattern: %s", path_pattern_.c_str());
        
        // 打印等高线螺旋路径的参数设置
        if (path_pattern_ == "contour_spiral") {
            ROS_INFO("Contour spiral parameters:");
            ROS_INFO("  Use custom boundary: %s", use_custom_boundary_ ? "true" : "false");
            ROS_INFO("  Contour spacing (w): %.2f", contour_spacing_);
            ROS_INFO("  Min optimization factor: %.2f", min_optimization_factor_);
            ROS_INFO("  Connection step factor: %.2f", connection_step_factor_);
            ROS_INFO("  Min layer area ratio: %.2f", min_layer_area_ratio_);
            ROS_INFO("  Max contour layers: %d", max_contour_layers_);
            
            if (use_custom_boundary_ && !custom_boundary_points_.empty()) {
                ROS_INFO("  Custom boundary points count: %zu", custom_boundary_points_.size());
                for (size_t i = 0; i < custom_boundary_points_.size(); ++i) {
                    ROS_INFO("    Point %zu: (%.2f, %.2f)", i, 
                             custom_boundary_points_[i].x, custom_boundary_points_[i].y);
                }
            }
        }
    }

    plan.clear();
    costmap_ = costmap_ros_->getCostmap();
    clock_t begin = clock();
    Point_t startPoint;

    /********************** Get grid from server **********************/
    std::vector<std::vector<bool>> grid;
    nav_msgs::GetMap grid_req_srv;
    ROS_INFO("Requesting grid...");
    if (!cpp_grid_client_.call(grid_req_srv))
    {
        ROS_ERROR("Could not retrieve grid from map_server");
        return false;
    }
    ROS_INFO("grid recieved!!");

    ROS_INFO("Parsing grid to internal representation...");
    if (!parseCostmap(costmap_, grid, robot_radius_ * 2, tool_radius_ * 2, start, startPoint))
    {
        ROS_ERROR("Could not parse retrieved grid");
        return false;
    }
    ROS_INFO("grid parsed!!");

#ifdef DEBUG_PLOT
    ROS_INFO("Start grid is:");
    std::list<Point_t> printPath;
    printPath.push_back(startPoint);
    printGrid(grid, grid, printPath);
#endif

    std::list<Point_t> goalPoints = boustrophedon_stc(
        grid, startPoint, boustrophedon_cpp_metrics_.multiple_pass_counter, boustrophedon_cpp_metrics_.visited_counter);

    ROS_INFO("naive cpp completed!");
    ROS_INFO("Converting path to plan");

    parsePointlist2Plan(start, goalPoints, plan);
    boustrophedon_cpp_metrics_.accessible_counter =
        boustrophedon_cpp_metrics_.visited_counter - boustrophedon_cpp_metrics_.multiple_pass_counter;
    boustrophedon_cpp_metrics_.total_area_covered =
        (4.0 * tool_radius_ * tool_radius_) * boustrophedon_cpp_metrics_.accessible_counter;
    
    ROS_INFO("=== 路径规划统计 ===");
    ROS_INFO("使用的路径模式: %s", path_pattern_.c_str());
    ROS_INFO("Total visited: %d", boustrophedon_cpp_metrics_.visited_counter);
    ROS_INFO("Total re-visited: %d", boustrophedon_cpp_metrics_.multiple_pass_counter);
    ROS_INFO("Total accessible cells: %d", boustrophedon_cpp_metrics_.accessible_counter);
    ROS_INFO("Total accessible area: %f", boustrophedon_cpp_metrics_.total_area_covered);

    ROS_INFO("Publishing plan!");
    publishPlan(plan);
    ROS_INFO("Plan published!");
    ROS_DEBUG("Plan published");

    clock_t end = clock();
    double elapsed_secs = static_cast<double>(end - begin) / CLOCKS_PER_SEC;
    std::cout << "elapsed time: " << elapsed_secs << "\n";

    return true;
}
}  // namespace full_coverage_path_planner