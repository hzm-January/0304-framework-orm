# 查询事务
select * from information_schema.innodb_trx;
# 查询持续时间超过60s的事务
select * from information_schema.innodb_trx where time_to_sec(timediff(now(), trx_started))>60;