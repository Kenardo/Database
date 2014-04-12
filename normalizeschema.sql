

create table users(
userid int auto_increment not null,
fname varchar(50),
lname varchar(50),
primary key(userid)
);

create table registration(
reg_id int auto_increment not null,
userid int,
password varchar(128) not null,
primary key(reg_id),
foreign key (userid) references users(userid)
);


create table users_info(
userid int,
dob date,
primary key(userid),
foreign key(userid) references users(userid) on update cascade on delete cascade 
);

create table users_contact(
userid int,
email varchar(100),
primary key(userid),
foreign key(userid) references users(userid) on update cascade on delete cascade 
);

create table profile(
userid int,
user_status varchar(100),
profile_pic varchar(128),
primary key (userid),
foreign key(userid) references users(userid) on update cascade on delete cascade 
);

create table groups(
groupid int NOT NULL AUTO_INCREMENT,
group_name varchar(50),
primary key(groupid)
);

create table comments(
commentid int NOT NULL AUTO_INCREMENT,
content varchar(200),
comment_likes int,
primary key(commentid)
);

create table post(
postid int NOT NULL AUTO_INCREMENT,
title varchar(128),
post_type varchar(50),
primary key(postid)
);

create table post_content(
postid int,
image_path varchar(128),
text_body varchar(200),
post_like int,
primary key(postid)
);

create table group_post(
gpostid int auto_increment not null,
title varchar(128),
g_post_type varchar(50),
primary key(gpostid)
);

create table gpost_content(
gpostid int,
g_image_path varchar(128),
text_body varchar(200),
gpost_like int,
primary key (gpostid),
foreign key (gpostid) references group_post(gpostid) on update cascade on delete cascade
);

create table creates(
userid int,
postid int,
date_created date,
primary key(postid),
foreign key (userid) references users(userid) on update cascade on delete cascade,
foreign key (postid) references post(postid) on update cascade on delete cascade
);

create table comments_on(
userid int,
postid int,
commentid int,
date_commented date,
primary key(userid),
foreign key (userid) references users(userid) on update cascade on delete cascade,
foreign key (postid) references post(postid) on update cascade on delete cascade
);

create table friend_of(
friend int,
friend_owner int,
type varchar(50),
primary key(friend, friend_owner),
foreign key (friend) references users(userid) on update cascade on delete cascade,
foreign key (friend_owner) references users(userid) on update cascade on delete cascade
);

create table add_editors_group(
groupid int,
userid int,
date_added date,
primary key(groupid),
foreign key (groupid) references groups(groupid) on update cascade on delete cascade,
foreign key (userid) references users(userid) on update cascade on delete cascade
);

create table add_to_group(
groupid int,
userid int,
date_added date,
primary key(userid, groupid),
foreign key (userid) references users(userid) on update cascade on delete cascade,
foreign key (groupid) references groups(groupid) on update cascade on delete cascade
);

create table create_group(
groupid int,
userid int,
date_created date,
primary key(groupid),
foreign key (userid) references users(userid) on update cascade on delete cascade,
foreign key (groupid) references groups(groupid) on update cascade on delete cascade
);

create table create_content(
userid int,
groupid int,
gpostid int,
date_created date,
primary key(userid, groupid, gpostid),
foreign key (userid) references users(userid) on update cascade on delete cascade,
foreign key (groupid) references groups(groupid) on update cascade on delete cascade,
foreign key (gpostid) references group_post(gpostid) on update cascade on delete cascade
);