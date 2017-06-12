DROP DATABASE IF EXISTS db_ip;
CREATE DATABASE db_ip;

DROP TABLE IF EXISTS db_ip.inquire;
CREATE TABLE db_ip.inquire(
  id INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  ip VARCHAR(255) COMMENT 'IP地址',
  geo VARCHAR(255) COMMENT '地理位置'
);

INSERT INTO db_ip.inquire VALUES (NULL ,'1.25.8.0','内蒙古');
INSERT INTO db_ip.inquire VALUES (NULL ,'1.25.8.1','黑龙江');
INSERT INTO db_ip.inquire VALUES (NULL ,'1.25.8.2','呼和浩特市');
INSERT INTO db_ip.inquire VALUES (NULL ,'1.25.8.3','宁夏回族自治区');

SELECT *
FROM db_ip.inquire;

SELECT * FROM db_ip.inquire WHERE ip = '  ';