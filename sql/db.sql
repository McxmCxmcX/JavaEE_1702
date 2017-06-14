DROP DATABASE IF EXISTS db_javaee;
CREATE DATABASE db_javaee;

DROP TABLE IF EXISTS db_javaee.user;
CREATE TABLE db_javaee.user (
  id       INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  nike     VARCHAR(255) NOT NULL
  COMMENT '昵称',
  mobile   VARCHAR(255) NOT NULL
  COMMENT '手机号',
  password VARCHAR(255) NOT NULL
  COMMENT '密码'
)
  COMMENT '用户表';


DROP TABLE IF EXISTS db_javaee.student;
CREATE TABLE db_javaee.student (
  id     INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  name   VARCHAR(255) NOT NULL
  COMMENT '姓名',
  gender VARCHAR(255) NOT NULL
  COMMENT '性别',
  dob    INT          NULL
  COMMENT '出生日期'
)
  COMMENT '学生表';


SELECT *
FROM db_javaee.user;


SELECT *
FROM db_javaee.student;

-- CRUD Create-Insert Retrieve-Select Update-Update Delete-Delete

TRUNCATE TABLE db_javaee.user;
TRUNCATE TABLE db_javaee.student;






/*
学生信息
  到校时间
  姓名
  性别
  电话
  年龄
  学历
  家庭住址(身份证地址)
  身份证号码
试听期
  专业
  入学日期
  催费日期
  入学协议签订日期
  家长姓名
  家长身份证号
  电话
学费信息
  学费是否交齐
  学费缴费金额
  未交费金额
  交款方式
  未交费延期时间
  最终缴费日期
住宿费信息
  是否住宿
  住宿费缴费金额
  住宿到期时间
  宿舍号
  离寝时间
保险/体检信息
  保险缴费金额
  保险时间
  体检缴费金额
  体检时间
毕业时间
调换专业时间
返校重听时间
休学信息
  休学时间
  休学原因
  复学时间
退学信息
  退学时间
  退学原因
市场信息
  市场部
  姓名
  性别
  联系电话
  家庭地址
  身份证号
  代理地区
  代理级别
  签订日期
  有效日期
  开户行
  银行卡号
  上一级
  考察日期
*/