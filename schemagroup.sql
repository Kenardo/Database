create table user(
userid int auto increment not null,
status varchar(10),
reg_id int,
password varchar(128),
primary key(userid)
);

create table group(
groupid int auto increment not null,
groupname varchar(50),
primary key(groupid)
);

create table post(
postid int auto increment not null,
title varchar(128),
image_path varchar(128),
g_post_type varchar(50),
text_body varchar(200),
primary key (postid)
);

create table group_post(
gpostid int auto increment not null,
title varchar(128),
g_image_path varchar(128),
g_post_type varchar(50),
text_body varchar(200),
primary key (gpostid)
);

create table comment(
userid int,
fname varchar(50),
lname varchar(50),
email varchar(100),
profile_pic varchar(128),
dob date,
primary key(userid),
foreign key(userid) on update cascade on delete cascade
);

