create table users(
userid int auto_increment not null,
user_status varchar(100),
reg_id int,
password varchar(128) not null,
primary key(userid)
);

create table groups(
groupid int auto_increment not null,
groupname varchar(50),
primary key(groupid)
);

create table posts(
postid int auto_increment not null,
title varchar(128),
likes int,
image_path varchar(128),
g_post_type varchar(50),
text_body varchar(200),
post_likes int,
primary key (postid)
);

create table group_posts(
gpostid int auto_increment not null,
title varchar(128),
g_image_path varchar(128),
g_post_type varchar(50),
text_body varchar(200),
gpost_likes int,
primary key (gpostid)
);

create table comments(
commentid int auto_increment not null,
content varchar(200),
comment_likes int,
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
foreign key (userid) references users(userid) on update cascade on delete cascade
);

create table friend_of(
friend int,
friend_owner int,
type varchar(50),
primary key(friend, friend_owner),
foreign key (friend) references users(userid) on update cascade on delete cascade,
foreign key (friend_owner) references users(userid) on update cascade on delete cascade
);

create table creates(
userid int,
postid int,
date_created date,
primary key(userid),
foreign key (userid) references users(userid) on update cascade on delete cascade,
foreign key (postid) references posts(postid) on update cascade on delete cascade
);

create table comments_on(
userid int,
postid int,
commentid int,
date_commented date,
primary key(userid),
foreign key (userid) references users(userid) on update cascade on delete cascade,
foreign key (postid) references posts(postid) on update cascade on delete cascade
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
foreign key (gpostid) references group_posts(gpostid) on update cascade on delete cascade
);