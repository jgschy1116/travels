-- 用户表
CREATE TABLE t_user(
id int(6) PRIMARY KEY auto_increment,
username VARCHAR(60),
password varchar(60),
email varchar(60)
)

-- 省份表
CREATE TABLE t_province(
id int(6) PRIMARY KEY auto_increment,
name VARCHAR(60),
tags varchar(80),
placecount int(4)
)

-- 景点表
CREATE TABLE t_place(
id int(6) PRIMARY KEY auto_increment,
name VARCHAR(60),
picpath varchar(100),
hottime TIMESTAMP,
hotticket double(7,2),
dimticket double(7,2),
placedes varchar(300),
provinceid int(6) REFERENCES t_province(id)
)
