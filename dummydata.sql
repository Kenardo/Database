/*dummy data for users*/
INSERT INTO 'users'('userid', 'fname' ,  'lname') VALUES ('1', 'Cooper', 'Abigail');
INSERT INTO 'users'('userid', 'fname' ,  'lname') VALUES ('2', 'Barrett', 'Ariel');
INSERT INTO 'users'('userid', 'fname' ,  'lname') VALUES ('3', 'Johnson',  'Kemar');
INSERT INTO 'users'('userid', 'fname' ,  'lname') VALUES ('4', 'Stewart', 'Ricardo');
INSERT INTO 'users'('userid', 'fname' ,  'lname') VALUES ('5', 'Wynter', 'Christoffe');
INSERT INTO 'users'('userid', 'fname' ,  'lname') VALUES ('6', 'Cooper', 'Duncan');
INSERT INTO 'users'('userid', 'fname' ,  'lname') VALUES ('7', 'Lindo', 'Jessica');
INSERT INTO 'users'('userid', 'fname' ,  'lname') VALUES ('8', 'Betty', 'Gabrielle');
INSERT INTO 'users'('userid', 'fname' ,  'lname') VALUES ('9', 'Watson', 'Gabrielle');
INSERT INTO 'users'('userid', 'fname' ,  'lname') VALUES ('10','Trump', 'Donald');


/*dummy data for registration*/
INSERT INTO 'registration'('reg_id', 'userid' ,  'password') VALUES ('1','1', 'yup');
INSERT INTO 'registration'('reg_id', 'userid' ,  'password') VALUES ('2','2', 'something');
INSERT INTO 'registration'('reg_id', 'userid' ,  'password') VALUES ('3','3', 'password');
INSERT INTO 'registration'('reg_id', 'userid' ,  'password') VALUES ('4','4', 'yaaa');
INSERT INTO 'registration'('reg_id', 'userid' ,  'password') VALUES ('5','5', 'heller');
INSERT INTO 'registration'('reg_id', 'userid' ,  'password') VALUES ('6','6', 'bemine');
INSERT INTO 'registration'('reg_id', 'userid' ,  'password') VALUES ('7','7', 'hateyou');
INSERT INTO 'registration'('reg_id', 'userid' ,  'password') VALUES ('8','8', 'property');
INSERT INTO 'registration'('reg_id', 'userid' ,  'password') VALUES ('9','9', 'jail');
INSERT INTO 'registration'('reg_id', 'userid' ,  'password') VALUES ('10','10', 'mango');


/*dummy data for users_info*/
INSERT INTO 'users_info'( 'userid' ,  'dob') VALUES ('1', '1992-03-29');
INSERT INTO 'users_info'( 'userid' ,  'dob') VALUES ('2', '1991-07-20');
INSERT INTO 'users_info'( 'userid' ,  'dob') VALUES ('3', '1992-03-09');
INSERT INTO 'users_info'( 'userid' ,  'dob') VALUES ('4', '1990-04-29');
INSERT INTO 'users_info'( 'userid' ,  'dob') VALUES ('5', '1991-03-19');
INSERT INTO 'users_info'( 'userid' ,  'dob') VALUES ('6', '1994-03-25');
INSERT INTO 'users_info'( 'userid' ,  'dob') VALUES ('7', '1995-12-26');
INSERT INTO 'users_info'( 'userid' ,  'dob') VALUES ('8', '1994-11-29');
INSERT INTO 'users_info'( 'userid' ,  'dob') VALUES ('9', '1993-07-15');
INSERT INTO 'users_info'( 'userid' ,  'dob') VALUES ('10', '1992-03-29');

/* dummy data for users_contact*/
INSERT INTO 'users_contact'( 'userid' ,  'email') VALUES ('1', 'ilike@hotmail.com');
INSERT INTO 'users_contact'( 'userid' ,  'email') VALUES ('2', 'friends@gmail.com');
INSERT INTO 'users_contact'( 'userid' ,  'email') VALUES ('3', 'myname@live.com');
INSERT INTO 'users_contact'( 'userid' ,  'email') VALUES ('4', 'grandmascoat@yahoo.com');
INSERT INTO 'users_contact'( 'userid' ,  'email') VALUES ('5', 'money@gmail.com');
INSERT INTO 'users_contact'( 'userid' ,  'email') VALUES ('6', 'life@hotmail.com');
INSERT INTO 'users_contact'( 'userid' ,  'email') VALUES ('7', 'dumb@live.com');
INSERT INTO 'users_contact'( 'userid' ,  'email') VALUES ('8', 'wrong@yahoo.com');
INSERT INTO 'users_contact'( 'userid' ,  'email') VALUES ('9', 'help@yahoo.com');
INSERT INTO 'users_contact'( 'userid' ,  'email') VALUES ('10', 'suitandtie@gmail.com');

/*dummy data for profile */
INSERT INTO 'profile'( 'userid' ,  'user_status', 'profile_pic') VALUES ('1', 'i like love','lg');
INSERT INTO 'profile'( 'userid' ,  'user_status', 'profile_pic') VALUES ('2', 'I dislike love','kl');
INSERT INTO 'profile'( 'userid' ,  'user_status', 'profile_pic') VALUES ('3', 'Hunger','kl');
INSERT INTO 'profile'( 'userid' ,  'user_status', 'profile_pic') VALUES ('4', 'movie time','kl');
INSERT INTO 'profile'( 'userid' ,  'user_status', 'profile_pic') VALUES ('5', 'cheater','kl');
INSERT INTO 'profile'( 'userid' ,  'user_status', 'profile_pic') VALUES ('6', 'upset','kl');
INSERT INTO 'profile'( 'userid' ,  'user_status', 'profile_pic') VALUES ('7', 'sad','kl');
INSERT INTO 'profile'( 'userid' ,  'user_status', 'profile_pic') VALUES ('8', 'not fair','kl');
INSERT INTO 'profile'( 'userid' ,  'user_status', 'profile_pic') VALUES ('9', 'work','kl');
INSERT INTO 'profile'( 'userid' ,  'user_status', 'profile_pic') VALUES ('10', 'over it','kl');

/*dummy data for groups*/
INSERT INTO 'groups'( 'groupid','group_name') VALUES ('1', 'Started from the bottom');
INSERT INTO 'groups'( 'groupid','group_name') VALUES ('2', 'Rihanna Navy');
INSERT INTO 'groups'( 'groupid','group_name') VALUES ('3', 'Beeeeyyyhive');
INSERT INTO 'groups'( 'groupid','group_name') VALUES ('4', 'Underground');
INSERT INTO 'groups'( 'groupid','group_name') VALUES ('5', 'Cutters');

/*dummy data for comments */
INSERT INTO 'comments'( 'commentid','content', 'comment_likes') VALUES ('1', 'awesome thing','1');
INSERT INTO 'comments'( 'commentid','content', 'comment_likes') VALUES ('2', 'you the best','6');
INSERT INTO 'comments'( 'commentid','content', 'comment_likes') VALUES ('3', 'love you to pieces','9');
INSERT INTO 'comments'( 'commentid','content', 'comment_likes') VALUES ('4', 'hey','10');
INSERT INTO 'comments'( 'commentid','content', 'comment_likes') VALUES ('5', 'Share stuff online','11');

/*dummy data for post*/
INSERT INTO 'post'( 'postid','title', 'post_type') VALUES ('1', 'child','image');
INSERT INTO 'post'( 'postid','title', 'post_type') VALUES ('2', 'ye','text');
INSERT INTO 'post'( 'postid','title', 'post_type') VALUES ('3', 'sumtimes','image');
INSERT INTO 'post'( 'postid','title', 'post_type') VALUES ('4', 'Some ...','text');
INSERT INTO 'post'( 'postid','title', 'post_type') VALUES ('5', 'lalalal','image');
INSERT INTO 'post'( 'postid','title', 'post_type') VALUES ('6', 'idk about that','image');

/*dummy data for post_content*/
INSERT INTO 'post_content'( 'postid','image_path','text_body','post_like') VALUES ('1', 'Cut','stuff','5');
INSERT INTO 'post_content'( 'postid','image_path','text_body','post_like') VALUES ('2', 'Chill','ye','9');
INSERT INTO 'post_content'( 'postid','image_path','text_body','post_like') VALUES ('3', 'Curse','blah','10');
INSERT INTO 'post_content'( 'postid','image_path','text_body','post_like') VALUES ('4', 'Clap','yaa','13');
INSERT INTO 'post_content'( 'postid','image_path','text_body','post_like') VALUES ('5', 'php','lame','15');
INSERT INTO 'post_content'( 'postid','image_path','text_body','post_like') VALUES ('6', 'smiley','emonji','0');

/*dummy data group_post*/
INSERT INTO 'group_post'( 'postid','title', 'post_type') VALUES ('1', 'child','image');
INSERT INTO 'group_post'( 'postid','title', 'post_type') VALUES ('2', 'ye','text');
INSERT INTO 'group_post'( 'postid','title', 'post_type') VALUES ('3', 'sumtimes','image');
INSERT INTO 'group_post'( 'postid','title', 'post_type') VALUES ('4', 'Some ...','text');
INSERT INTO 'group_post'( 'postid','title', 'post_type') VALUES ('5', 'lalalal','image');
INSERT INTO 'group_post'( 'postid','title', 'post_type') VALUES ('6', 'idk about that','image');

/*dummy data for gpost_content*/
INSERT INTO 'gpost_content'( 'postid','image_path','text_body','post_like') VALUES ('1', 'Cut','stuff','5');
INSERT INTO 'gpost_content'( 'postid','image_path','text_body','post_like') VALUES ('2', 'Chill','ye','9');
INSERT INTO 'gpost_content'( 'postid','image_path','text_body','post_like') VALUES ('3', 'Curse','blah','10');
INSERT INTO 'gpost_content'( 'postid','image_path','text_body','post_like') VALUES ('4', 'Clap','yaa','13');
INSERT INTO 'gpost_content'( 'postid','image_path','text_body','post_like') VALUES ('5', 'php','lame','15');
INSERT INTO 'gpost_content'( 'postid','image_path','text_body','post_like') VALUES ('6', 'smiley','emonji','0');

/*dummy data for creates*/
INSERT INTO 'creates'( 'userid','postid','date_created') VALUES ('1', '1','2003-12-02');
INSERT INTO 'creates'( 'userid','postid','date_created') VALUES ('2', '2','2010-02-25');
INSERT INTO 'creates'( 'userid','postid','date_created') VALUES ('3', '3','2013-15-23');
INSERT INTO 'creates'( 'userid','postid','date_created') VALUES ('4', '4','2012-09-12');

/*dummy data for comments_on*/
INSERT INTO 'comments_on'( 'userid','postid','commentid','date_commented') VALUES ('1', '1','1','2003-12-02');
INSERT INTO 'comments_on'( 'userid','postid','commentid','date_commented') VALUES ('2', '2','2','2002-12-02');
INSERT INTO 'comments_on'( 'userid','postid','commentid','date_commented') VALUES ('3', '3','3','2001-12-02');
INSERT INTO 'comments_on'( 'userid','postid','commentid','date_commented') VALUES ('4', '4','4','2000-12-02');


/*dummy data for friend_of*/
INSERT INTO 'friend_of'( 'friend','friend_owner') VALUES ('1', '2');
INSERT INTO 'friend_of'( 'friend','friend_owner') VALUES ('2', '1');
INSERT INTO 'friend_of'( 'friend','friend_owner') VALUES ('1', '5');
INSERT INTO 'friend_of'( 'friend','friend_owner') VALUES ('8', '7');
INSERT INTO 'friend_of'( 'friend','friend_owner') VALUES ('10', '2');
INSERT INTO 'friend_of'( 'friend','friend_owner') VALUES ('1', '10');
INSERT INTO 'friend_of'( 'friend','friend_owner') VALUES ('4', '3');
INSERT INTO 'friend_of'( 'friend','friend_owner') VALUES ('6', '7');
INSERT INTO 'friend_of'( 'friend','friend_owner') VALUES ('2', '5');
INSERT INTO 'friend_of'( 'friend','friend_owner') VALUES ('3', '2');

/*dummy data for add_editors_group*/
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('1', '1','2003-12-02');
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('2', '2','2002-12-02');
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('3', '1','2000-12-02');
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('4', '7','2000-12-02');
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('5', '8','2010-12-02');
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('6', '10','2013-12-02');

/*dummy data for add_to_group*/
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('1', '1','2003-12-02');
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('2', '10','2003-12-02');
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('3', '2','2003-12-02');
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('4', '7','2003-12-02');
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('5', '9','2003-12-02');
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('6', '3','2003-12-02');

/*dummy data create_group*/
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('1', '1','2003-12-02');
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('2', '10','2003-12-02');
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('3', '2','2003-12-02');
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('4', '7','2003-12-02');
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('5', '9','2003-12-02');
INSERT INTO 'add_editors_group'( 'groupid','userid','date_added') VALUES ('6', '3','2003-12-02');


/*dummy data create_content*/
INSERT INTO 'add_editors_group'('userid','groupid','gpostid','date_created') VALUES ('1','1', '1','2003-12-02');
INSERT INTO 'add_editors_group'('userid','groupid','gpostid','date_created') VALUES ('2','2', '2','2003-12-02');
INSERT INTO 'add_editors_group'('userid','groupid','gpostid','date_created') VALUES ('3','3', '3','2003-12-02');
INSERT INTO 'add_editors_group'('userid','groupid','gpostid','date_created') VALUES ('4','4', '4','2003-12-02');
INSERT INTO 'add_editors_group'('userid','groupid','gpostid','date_created') VALUES ('5','5', '5','2003-12-02');
INSERT INTO 'add_editors_group'('userid','groupid','gpostid','date_created') VALUES ('6','6', '6','2003-12-02');


/* dummy data for users table */
INSERT INTO `users`(`user_status`, `reg_id`, `password`) VALUES ('i hate burger','1','abettor15');
INSERT INTO `users`(`user_status`, `reg_id`, `password`) VALUES ('i feel fat today','2','abnormalize67');
INSERT INTO `users`(`user_status`, `reg_id`, `password`) VALUES ('i am bored','3','special45');
INSERT INTO `users`(`user_status`, `reg_id`, `password`) VALUES ('i need a wife','4','intent90');
INSERT INTO `users`(`user_status`, `reg_id`, `password`) VALUES ('i am sick','5','helloworld10');
INSERT INTO `users`(`user_status`, `reg_id`, `password`) VALUES ('i am lonely','6','thisisme86');
INSERT INTO `users`(`user_status`, `reg_id`, `password`) VALUES ('i am getting married','7','hehelol43');
INSERT INTO `users`(`user_status`, `reg_id`, `password`) VALUES ('woot','8','gestureme53');
INSERT INTO `users`(`user_status`, `reg_id`, `password`) VALUES ('helloworld','9','yummy12');
INSERT INTO `users`(`user_status`, `reg_id`, `password`) VALUES ('rihanna is awesome','10','hamburger20');

/* dummy data for profile */
INSERT INTO `profile`(`userid`,`fname`,`lname`,`email`,`profile_pic`,`dob`) VALUES ('1','akeem','nemphis','anemphis@gmail.com','img24042013.jpg','1990-01-25');
