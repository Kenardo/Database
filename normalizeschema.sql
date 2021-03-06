create table registration(
reg_id int auto_increment not null,
userid int,
joindate date,
primary key (reg_id)
);

create table users(
userid int auto_increment not null,
fname varchar(70),
lname varchar(70),
password varchar(128),
primary key(userid)
);

create table users_info(
userid int,
email varchar(128),
dob date,
primary key (userid),
foreign key (userid) references users(userid) on update cascade on delete cascade
);

create table profile(
userid int,
user_status varchar(100),
profile_pic varchar(128),
primary key(userid),
foreign key (userid) references users(userid) on update cascade on delete cascade
);

create table groups(
groupid int auto_increment not null,
groupname varchar(50),
primary key(groupid)
);

create table comments(
commentid int auto_increment not null,
content varchar(200),
comment_likes int,
primary key(commentid)
);

create table comment_likes(
commentid int,
userid int,
primary key (commentid, userid),
foreign key (userid) references users(userid) on update cascade on delete cascade,
foreign key (commentid) references comments(commentid) on update cascade on delete cascade
);

create table post(
postid int auto_increment not null,
title varchar(128),
text_body varchar(250),
post_type varchar(50),
primary key (postid)
);

create table post_likes(
userid int,
postid int,
primary key (userid, postid),
foreign key (userid) references users(userid) on update cascade on delete cascade,
foreign key (postid) references post(postid) on update cascade on delete cascade
);

create table post_content(
postid int,
image_path varchar(128),
post_like int,
primary key (postid),
foreign key (postid) references post(postid) on update cascade on delete cascade
);

create table group_post(
gpostid int auto_increment not null,
groupid int,
title varchar(128),
text_body varchar(250),
g_post_type varchar(50),
primary key (gpostid),
foreign key (groupid) references groups(groupid) on update cascade on delete cascade
);

create table gpost_content(
gpostid int,
g_image_path varchar(128),
gpost_like int,
primary key (gpostid),
foreign key (gpostid) references group_post(gpostid) on update cascade on delete cascade
);

create table gpost_likes(
userid int,
gpostid int,
primary key(userid,gpostid),
foreign key (gpostid) references group_post(gpostid) on update cascade on delete cascade
);

create table creates(
userid int,
postid int,
date_created date,
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

create table comments_on(
userid int,
postid int,
commentid int,
date_commented date,
primary key(userid, postid, commentid),
foreign key (userid) references users(userid) on update cascade on delete cascade,
foreign key (postid) references post(postid) on update cascade on delete cascade,
foreign key (commentid) references comments(commentid) on update cascade on delete cascade
);

create table comments_on_gpost(
userid int,
gpostid int,
commentid int,
date_commented date,
primary key(userid, gpostid, commentid),
foreign key(userid) references users(userid) on update cascade on delete cascade,
foreign key(gpostid) references group_post(gpostid) on update cascade on delete cascade,
foreign key(commentid) references comments(commentid) on update cascade on delete cascade
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

/* Triggers */
Delimiter $$
CREATE TRIGGER UpdateRegisterTable
AFTER insert ON users
FOR EACH ROW
BEGIN
insert into registration(userid,joindate) values
(new.userid,CURDATE());
END $$
delimiter ;


DELIMITER //
CREATE PROCEDURE GetAge(IN ID integer)
BEGIN
SELECT DATEDIFF(now(),date(dob))/365 AS ageInYears
FROM users_info WHERE users_info.userid = ID;
END //
DELIMITER ;
/* CALL GetAge(userid)*/

DELIMITER //
CREATE PROCEDURE GetPostLikes(IN postID integer)
BEGIN 
SELECT COUNT(userid) FROM post_likes WHERE post_likes.postid = postID;
END //
DELIMITER ;
/*Call GetPostLikes(postid)*/

DELIMITER //
CREATE PROCEDURE GetCommentLikes(IN commentID integer)
BEGIN 
SELECT COUNT(userid) FROM comment_likes WHERE comment_likes.commentid = commentID;
END //
DELIMITER ;
/*Call GetCommentLikes(commentid)*/

DELIMITER //
CREATE PROCEDURE GetGroupPostLikes(IN gpostID integer)
BEGIN 
SELECT COUNT(userid) FROM gpost_likes WHERE gpost_likes.gpostid = gpostID;
END //
DELIMITER ;
/*Call GetGroupPostLikes(gpostid)*/

DELIMITER //
CREATE PROCEDURE GetFriendCount(IN ID integer)
BEGIN 
SELECT COUNT(friend) FROM friend_of WHERE friend_of.friend_owner = ID;
END //
DELIMITER ;
/*Call GetFriendCount(userid)*/