import psycopg2

# 连接到PostgreSQL数据库
conn = psycopg2.connect(
    dbname="sde",     # 数据库名
    user="sde",       # 数据库用户名
    password="123456", # 数据库密码
    host="127.0.0.1",  # 数据库主机地址
    port="5432"        # 数据库端口
)

# 创建一个游标对象
cur = conn.cursor()

# **清空目标表**
# 注意：在执行清空操作之前，请确保数据可以被安全删除
cur.execute("TRUNCATE TABLE reference_linkpoints_ccpp;")
cur.execute("TRUNCATE TABLE reference_link_ccpp;")

# 定义要插入的数据
data_points = []

# 读取TXT文件，获取 start_x, start_y 和 end_x, end_y
with open('coordinates.txt', 'r') as file:
    lines = file.readlines()
    if len(lines) > 0:
        first_line = lines[0].strip().split()
        last_line = lines[-1].strip().split()
        
        start_x = float(first_line[0])
        start_y = float(first_line[1])
        end_x = float(last_line[0])
        end_y = float(last_line[1])
        
        objectid = 1  # 初始化 objectid
        pointorder = 0  # 初始化 pointorder
        for line in lines:
            line = line.strip()
            if line:
                parts = line.split()
                point_x = float(parts[0])
                point_y = float(parts[1])
                data_points.append((objectid, 1, 1, pointorder, point_x, point_y))  # 添加数据到列表
                objectid += 1  # 增加 objectid
                pointorder += 1  # 增加 pointorder

# 插入 reference_linkpoints_carla_parking 数据
for record in data_points:
    cur.execute(
        "INSERT INTO reference_linkpoints_ccpp (objectid, id, orig_fid, pointorder, point_x, point_y) VALUES (%s, %s, %s, %s, %s, %s)",
        record
    )

# 插入 reference_link_carla_parking 数据
cur.execute(
    "INSERT INTO reference_link_ccpp (objectid, id, turn_flag, velocity, scenes, lane_num, start_x, start_y, end_x, end_y) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",
    (1, 1, 0, 0, 0, 0, start_x, start_y, end_x, end_y)
)

# 提交更改
conn.commit()

# 关闭游标和连接
cur.close()
conn.close()

