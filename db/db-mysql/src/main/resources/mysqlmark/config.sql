# 查看可变参数
show variables;
# 查看指定可变参数
show variables like 'transaction_isolation'; #查看隔离级别

# 日志
# 查看二进制日志位置
# 记录所有DDL和DML，但不包含查询记录
# 该二进制文件不能直接查看，需要借助mysqlbinlog工具
show variables like 'log_bin'; #查看是否启用日志
# 查看查询日志位置
# 查询日志记录了client的所有的语句
# 由于log日志记录了数据库所有操作，对于访问频繁的系统，此种日志会造成性能影响，建议关闭
show variables like 'general_log_file';
# 查看错误日志位置
# 记录着mysqld启动和停止，以及服务器在运行过程中发生的任何错误的相关信息
show variables like 'log_error';
# 查看慢日志位置
# 记录了执行时间超过参数long_query_time(单位是秒)所设定值的SQL语句日志
# 慢查询日志对于发现性能有问题的SQL有很帮助，建议使用并经常分析
show variables like 'slow_query_log_file';
show variables like 'innodb_flush_log_at_trx_commit';
show variables like 'sync_binlog';
show variables like 'innodb_data_file_path';

show master status ;


# 查看连接
show processlist;

# 查看版本
select version();