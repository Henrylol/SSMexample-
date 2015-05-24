DROP DATABASE IF EXISTS unionquery;
CREATE DATABASE unionquery CHARACTER SET 'utf8'
CoLLATE 'utf8_general_ci';
USE unionquery;

DROP TABLE IF EXISTS s_user;
CREATE TABLE s_user(
   id   bigint(20) primary key,
   name varchar(20),
   birthday  datetime
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;


DROP TABLE IF EXISTS s_company;
create table s_company(
   id  bigint(20) primary key,
   name varchar(100),
   address  varchar(200)
) ENGINE=InnoDB Default CHARSET=UTF8;


insert into s_user(id,name,birthday) values(1,'张三','1989-04-01 15:33:33');
insert into s_user(id,name,birthday) values(2,'李四','1943-09-17 17:55:22');
insert into s_user(id,name,birthday) values(3,'王五','1995-02-07 15:33:33');
insert into s_user(id,name,birthday) values(4,'郭柳','1977-02-07 15:33:33');
insert into s_user(id,name,birthday) values(5,'虹曼华','1987-02-07 15:33:33');
insert into s_user(id,name,birthday) values(6,'于曼','1982-02-07 15:33:33');
insert into s_user(id,name,birthday) values(7,'张超','1984-02-07 09:43:33');
insert into s_user(id,name,birthday) values(8,'王垫','1982-11-03');
insert into s_user(id,name,birthday) values(9,'刘志','1968-04-11 15:33:33');
insert into s_user(id,name,birthday) values(10,'于凤龙','1979-07-05');

insert into s_company(id,name,address) values(1,'百度','中国江苏');
insert into s_company(id,name,address) values(2,'ebay','美国加利福尼亚');
insert into s_company(id,name,address) values(3,'亚马逊','中国北京');
insert into s_company(id,name,address) values(4,'新蛋','美国纽约');
insert into s_company(id,name,address) values(5,'松下','日本东京');
insert into s_company(id,name,address) values(6,'索尼','中国上海');
insert into s_company(id,name,address) values(7,'索尼','中国广州');
insert into s_company(id,name,address) values(8,'鸿基','台湾高雄');
insert into s_company(id,name,address) values(9,'开普敦','中国资阳');
insert into s_company(id,name,address) values(10,'驷马','中国四川');
