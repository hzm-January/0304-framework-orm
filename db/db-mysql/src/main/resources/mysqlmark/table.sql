--查看所有数据表
show tables;

-- 创建数据表
create table if not exists `t_user`(
  `id` int unsigned not null primary key auto_increment,
  `name` varchar(100) not null
)engine = InnoDB default charset = UTF8MB4;

-- 删除数据表
drop table `t_user`;

-- 查询数据表信息
-- 查询所有列信息
show columns from t_user;

-- 修改数据表
-- 添加列
alter table t_user add age tinyint not null;
