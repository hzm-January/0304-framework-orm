# 创建测试数据表
# 为t_user表添加索引

# 查询表的所有索引
show index from t_user;

# 查看索引在执行指定sql时是否生效
explain select * from t_user where id = 2;
# 覆盖索引 不回表查询，减少检索树的次数
explain select id from t_user where id_card = 2;
# 最左前缀 只要查询使用了最左前缀字段，不管是不是范围查找，都会使用索引
explain select * from t_user where id_card > 2 ;
explain select * from t_user where name = '%jack%' and age = 12; #未使用索引
explain select * from t_user where id_card > 3 and name = '%jack%' and age = 12;
explain select * from t_user where addr = 'New York';
explain select * from t_user where addr like '%New York%';
# 索引下推 5.6+ 对索引中包含的字段进行判断，过滤掉不满足条件的记录，减少回表查询次数
select * from t_user where id = 2 and age > 10;