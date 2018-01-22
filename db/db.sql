set names utf8;
create database wsl1708acl01 charset=utf8;
use wsl1708acl01;
--create table t_user(
--    id int primary key auto_increment,
--    uname varchar(32) not null default '',
--    upwd varchar(32) not null default '',
--    utype enum('1','0') not null default '0'
--);
--insert into t_user values(null,'tom',md5('123'),'0');
--insert into t_user values(null,'jack',md5('456'),'1');
--insert into t_user values(null,'lily',md5('789'),'1');

create table t_users(
	uid int primary key auto_increment,
	uname varchar(32) not null default '',
	upwd varchar(32) not null default ''
);
insert into t_users values(null,'tom',md5('123'));
insert into t_users values(null,'jack',md5('456'));
insert into t_users values(null,'superadmin',md5('18510422060'));

create table t_role(
	rid int primary key auto_increment,
	rname varchar(25) not null default ''
);	
insert into t_role values(1,'超级管理员');
insert into t_role values(2,'普通用户');
insert into t_role values(3,'财务管理员');

create table t_user_role(
	id int primary key auto_increment,
	rid int not null default 0,
	uid int not null default 0
);
insert into t_user_role values(null,1,3);
insert into t_user_role values(null,2,3);
insert into t_user_role values(null,3,3);
insert into t_user_role values(null,2,1);
insert into t_user_role values(null,2,2);

create table t_module(
    mid int primary key auto_increment,
    mname varchar(100) not null default '',
    pid int not null default 0,
    sn varchar(100) not null default '',
    `level` int not null default 0
);
insert into t_module values(null,'总公司',0,'1',1);
insert into t_module values(null,'北京分公司',0,'1_2',2);
insert into t_module values(null,'上海分公司',0,'1_3',2);

create table t_acl(
    aid int primary key auto_increment,
    mid int not null default 0,
    rid int not null default 0,
    c enum('1','0') not null default '0',
    r enum('1','0') not null default '0',
    u enum('1','0') not null default '0',
    d enum('1','0') not null default '0'
);
insert into t_acl values(null,1,1,'1','1','1','1');
insert into t_acl values(null,2,1,'1','1','1','1');
insert into t_acl values(null,3,1,'1','1','1','1');
insert into t_acl values(null,1,2,'0','1','0','0');
insert into t_acl values(null,2,2,'0','1','0','0');
insert into t_acl values(null,3,2,'0','1','0','0');