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
commentid int auto increment not null,
content varchar(200),
primary key(commentid)
);

create table profile(
userid int,
fname varchar(50),
lname varchar(50),
email varchar(100),
profile_pic varchar(128),
dob date,
primary key(userid),
foreign key(userid) on update cascade on delete cascade
);

create table create_group(
groupid int,
userid int,
date_created date,
primary key(groupid)
);

create table add_to_group(
groupid int,
userid int,
date_added date,
primary key(groupid)
);

create table add_editors_group(
groupid int,
userid int,
date_added date,
primary key(groupid),
);

create table friend_of(
userid int,
type varchar(50),
primary key(userid)
);

create table creates(
userid int,
postid int,
date_created date,
primary key(userid)
);

create table create_content(
userid int,
groupid int,
gpostid int,
date_created date,
primary key(userid)
);

create table comment_on(
userid int,
postid int,
commentid int,
date_commented date,
primary key(userid)
);