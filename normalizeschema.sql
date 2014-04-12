create table registration(

);

create table users(
);

create table users_info(
);

create table users_contact(
);

create table profile(
);

create table groups(
);

create table comments(
);

create table post(
);

create table post_content(
);

create table group_post(
);

create table gpost_content(
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
foreign key (gpostid) references group_posts(gpostid) on update cascade on delete cascade
);