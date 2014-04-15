/*dummy data for registration*/
INSERT INTO registration(reg_id, userid ,  joindate) VALUES ('1','1', '2008-11-29');
INSERT INTO registration(reg_id, userid ,  joindate) VALUES ('2','2', '2007-10-15');
INSERT INTO registration(reg_id, userid ,  joindate) VALUES ('3','3', '2005-07-30');
INSERT INTO registration(reg_id, userid ,  joindate) VALUES ('4','4', '2004-12-23');
INSERT INTO registration(reg_id, userid ,  joindate) VALUES ('5','5', '2000-09-27');
INSERT INTO registration(reg_id, userid ,  joindate) VALUES ('6','6', '2003-02-26');
INSERT INTO registration(reg_id, userid ,  joindate) VALUES ('7','7', '2009-07-30');
INSERT INTO registration(reg_id, userid ,  joindate) VALUES ('8','8', '2001-10-19');
INSERT INTO registration(reg_id, userid ,  joindate) VALUES ('9','9', '2006-12-28');
INSERT INTO registration(reg_id, userid ,  joindate) VALUES ('10','10', '2002-04-15');


/* dummy data for users 
password is md5('hello') = 5d41402abc4b2a76b9719d911017c592
*/
INSERT INTO users(userid, fname, lname, password) VALUES ('1','Abigail','Saunders','5d41402abc4b2a76b9719d911017c592');
INSERT INTO users(userid, fname, lname, password) VALUES ('2','Ariel', 'Zucks','5d41402abc4b2a76b9719d911017c592');
INSERT INTO users(userid, fname, lname, password) VALUES ('3','Kemar',  'Lowes','5d41402abc4b2a76b9719d911017c592');
INSERT INTO users(userid, fname, lname, password) VALUES ('4','Duncan','Swaby','5d41402abc4b2a76b9719d911017c592');
INSERT INTO users(userid, fname, lname, password) VALUES ('5','Brian','Meeks','5d41402abc4b2a76b9719d911017c592');
INSERT INTO users(userid, fname, lname, password) VALUES ('6','Gabrielle','Gates','5d41402abc4b2a76b9719d911017c592');
INSERT INTO users(userid, fname, lname, password) VALUES ('7','Melinda','Trump','5d41402abc4b2a76b9719d911017c592');
INSERT INTO users(userid, fname, lname, password) VALUES ('8','Jessica','Stevens','5d41402abc4b2a76b9719d911017c592');
INSERT INTO users(userid, fname, lname, password) VALUES ('9','Anthony','Denmark','5d41402abc4b2a76b9719d911017c592');
INSERT INTO users(userid, fname, lname, password) VALUES ('10','Megan','Lindo','5d41402abc4b2a76b9719d911017c592');


/*dummy data for users_info*/
INSERT INTO users_info( userid , email, dob) VALUES ('1', 'abisaunders@hotmail.com', '1987-03-29');
INSERT INTO users_info( userid , email, dob) VALUES ('2', 'arielzucks@gmail.com', '1983-07-20');
INSERT INTO users_info( userid , email, dob) VALUES ('3', 'kemzlow@live.com', '1980-03-09');
INSERT INTO users_info( userid , email,  dob) VALUES ('4', 'swabyduncan@yahoo.com', '1990-04-29');
INSERT INTO users_info( userid , email,  dob) VALUES ('5', 'meeksb@gmail.com', '1978-03-19');
INSERT INTO users_info( userid , email,  dob) VALUES ('6', 'gates_gab@hotmail.com', '1994-03-25');
INSERT INTO users_info( userid , email,  dob) VALUES ('7', 'trump@live.com', '1995-12-26');
INSERT INTO users_info( userid , email,  dob) VALUES ('8', 'stevens@yahoo.com', '1977-03-29');
INSERT INTO users_info( userid , email,  dob) VALUES ('9', 'denmark@yahoo.com', '1990-07-15');
INSERT INTO users_info( userid , email,  dob) VALUES ('10', 'lindo_megan@gmail.com', '1992-03-29');


/*dummy data for profile */
INSERT INTO profile( userid ,  user_status, profile_pic) VALUES ('1', 'i like love','img01.jpg');
INSERT INTO profile( userid ,  user_status, profile_pic) VALUES ('2', 'I dislike love','img02.jpg');
INSERT INTO profile( userid ,  user_status, profile_pic) VALUES ('3', 'Hunger','img03.jpg');
INSERT INTO profile( userid ,  user_status, profile_pic) VALUES ('4', 'movie time','img04.jpg');
INSERT INTO profile( userid ,  user_status, profile_pic) VALUES ('5', 'cheater','img05.jpg');
INSERT INTO profile( userid ,  user_status, profile_pic) VALUES ('6', 'upset','img06.jpg');
INSERT INTO profile( userid ,  user_status, profile_pic) VALUES ('7', 'sad','img07.jpg');
INSERT INTO profile( userid ,  user_status, profile_pic) VALUES ('8', 'not fair','img08.jpg');
INSERT INTO profile( userid ,  user_status, profile_pic) VALUES ('9', 'work','img09.jpg');
INSERT INTO profile( userid ,  user_status, profile_pic) VALUES ('10', 'over it','img10.jpg');

/*dummy data for groups*/
INSERT INTO groups( groupid,groupname) VALUES ('1', 'Started from the bottom');
INSERT INTO groups( groupid,groupname) VALUES ('2', 'Rihanna Navy');
INSERT INTO groups( groupid,groupname) VALUES ('3', 'Beeeeyyyhive');
INSERT INTO groups( groupid,groupname) VALUES ('4', 'Underground');
INSERT INTO groups( groupid,groupname) VALUES ('5', 'Cutters');
INSERT INTO groups( groupid,groupname) VALUES ('6', 'Moving On');

/*dummy data for comments */
INSERT INTO comments( commentid,content, comment_likes) VALUES ('1', 'awesome thing','1');
INSERT INTO comments( commentid,content, comment_likes) VALUES ('2', 'you the best','6');
INSERT INTO comments( commentid,content, comment_likes) VALUES ('3', 'love you to pieces','9');
INSERT INTO comments( commentid,content, comment_likes) VALUES ('4', 'hey','10');
INSERT INTO comments( commentid,content, comment_likes) VALUES ('5', 'Share stuff online','11');
INSERT INTO comments( commentid,content, comment_likes) VALUES ('6', 'yes','21');

/* dummy data for comment likes */
INSERT INTO comment_likes( commentid, userid ) VALUES ('1','6');
INSERT INTO comment_likes( commentid, userid ) VALUES ('2','5');
INSERT INTO comment_likes( commentid, userid ) VALUES ('3','4');
INSERT INTO comment_likes( commentid, userid ) VALUES ('4','3');
INSERT INTO comment_likes( commentid, userid ) VALUES ('5','2');
INSERT INTO comment_likes( commentid, userid ) VALUES ('6','1');


/*dummy data for post*/
INSERT INTO post( postid,title, text_body, post_type) VALUES ('1', 'Child Abuse', 'Child abuse consists of any act of commission or omission that endangers or impairs a child’s physical or emotional health and development. Child abuse includes any damage done to a child which cannot be reasonably explained and which is often represented by an injury or series of injuries appearing to be non-accidental in nature' ,'text');
INSERT INTO post( postid,title, text_body, post_type) VALUES ('2', 'Love','Love refers to a variety of different feelings, states, and attitudes that ranges from interpersonal affection ("I love my mother") to pleasure ("I loved that meal")','text');
INSERT INTO post( postid,title, text_body, post_type) VALUES ('3', 'Kevin Bacon','Photo: Kevin Bacon','image');
INSERT INTO post( postid,title, text_body, post_type) VALUES ('4', 'Crysalids', 'Photo','image');
INSERT INTO post( postid,title, text_body, post_type) VALUES ('5', 'Prison','A prison[2] or jail[3] is a facility in which individuals are forcibly confined and denied a variety of freedoms under the authority of the state','image');
INSERT INTO post( postid,title, text_body, post_type) VALUES ('6', 'Rihanna', 'Photo: Rihanna','image');

/* dummy data for post likes */
INSERT INTO post_likes( userid, postid) VALUES ('1','5');
INSERT INTO post_likes( userid, postid) VALUES ('4','1');
INSERT INTO post_likes( userid, postid) VALUES ('5','4');
INSERT INTO post_likes( userid, postid) VALUES ('2','6');
INSERT INTO post_likes( userid, postid) VALUES ('3','2');
INSERT INTO post_likes( userid, postid) VALUES ('6','3');

/*dummy data for post_content*/
INSERT INTO post_content( postid,image_path,post_like) VALUES ('1', 'postpic/img01.jpg','5');
INSERT INTO post_content( postid,image_path,post_like) VALUES ('2', 'postpic/img02.jpg','9');
INSERT INTO post_content( postid,image_path,post_like) VALUES ('3', 'postpic/img03.jpg','10');
INSERT INTO post_content( postid,image_path,post_like) VALUES ('4', 'postpic/img04.jpg','13');
INSERT INTO post_content( postid,image_path,post_like) VALUES ('5', 'postpic/img05.jpg','15');
INSERT INTO post_content( postid,image_path,post_like) VALUES ('6', 'postpic/img06.jpg','0');

/*dummy data group_post*/
INSERT INTO group_post( gpostid,title, text_body, g_post_type) VALUES ('1', 'Orange','The orange (specifically, the sweet orange) is the fruit of the citrus species','image');
INSERT INTO group_post( gpostid,title, text_body, g_post_type) VALUES ('2', 'Ackee','The kaki, also known as achee, akee apple or akee (Blighia sapida) is a member of the Sapindaceae (soapberry family)','image');
INSERT INTO group_post( gpostid,title, text_body, g_post_type) VALUES ('3', 'Banana','A banana is an edible fruit produced by several kinds of large herbaceous flowering plants in the genus Musa','image');
INSERT INTO group_post( gpostid,title, text_body, g_post_type) VALUES ('4', 'Apple','The apple is the pomaceous fruit of the apple tree, species Malus domestica in the rose family (Rosaceae)','text');
INSERT INTO group_post( gpostid,title, text_body, g_post_type) VALUES ('5', 'Grapefruit','The grapefruit (Citrus × paradisi) is a subtropical citrus tree known for its sour to semi-sweet fruit, an 18th-century hybrid first bred in Barbados.','text');
INSERT INTO group_post( gpostid,title, text_body, g_post_type) VALUES ('6', 'Passion','The Cherry is the fruit of many plants of the genus Prunus, and is a fleshy drupe (stone fruit). ','text');

/*dummy data for gpost_content*/
INSERT INTO gpost_content( gpostid, g_image_path, gpost_like) VALUES ('1', 'Orange','5');
INSERT INTO gpost_content( gpostid, g_image_path, gpost_like) VALUES ('2' ,'ye','9');
INSERT INTO gpost_content( gpostid, g_image_path, gpost_like) VALUES ('3', 'blah','10');
INSERT INTO gpost_content( gpostid, g_image_path, gpost_like) VALUES ('4', 'yaa','13');
INSERT INTO gpost_content( gpostid, g_image_path, gpost_like) VALUES ('5', 'lame','15');
INSERT INTO gpost_content( gpostid, g_image_path, gpost_like) VALUES ('6', 'emonji','0');

/* dummy data for gpost likes */
INSERT INTO gpost_likes (userid, gpostid) VALUES ('10','1');
INSERT INTO gpost_likes (userid, gpostid) VALUES ('8','2');
INSERT INTO gpost_likes (userid, gpostid) VALUES ('6','6');
INSERT INTO gpost_likes (userid, gpostid) VALUES ('4','3');
INSERT INTO gpost_likes (userid, gpostid) VALUES ('2','4');
INSERT INTO gpost_likes (userid, gpostid) VALUES ('1','5');

/*dummy data for creates*/
INSERT INTO creates( userid,postid,date_created) VALUES ('1', '1','2003-12-02');
INSERT INTO creates( userid,postid,date_created) VALUES ('2', '2','2010-02-25');
INSERT INTO creates( userid,postid,date_created) VALUES ('3', '3','2013-15-23');
INSERT INTO creates( userid,postid,date_created) VALUES ('4', '4','2012-09-12');

/*dummy data for comments_on*/
INSERT INTO comments_on( userid,postid,commentid,date_commented) VALUES ('1', '1','1','2003-12-02');
INSERT INTO comments_on( userid,postid,commentid,date_commented) VALUES ('2', '2','2','2002-12-02');
INSERT INTO comments_on( userid,postid,commentid,date_commented) VALUES ('3', '3','3','2001-12-02');
INSERT INTO comments_on( userid,postid,commentid,date_commented) VALUES ('4', '4','4','2000-12-02');


/*dummy data for friend_of*/
INSERT INTO friend_of( friend,friend_owner) VALUES ('1', '2');
INSERT INTO friend_of( friend,friend_owner) VALUES ('2', '1');
INSERT INTO friend_of( friend,friend_owner) VALUES ('1', '5');
INSERT INTO friend_of( friend,friend_owner) VALUES ('8', '7');
INSERT INTO friend_of( friend,friend_owner) VALUES ('10', '2');
INSERT INTO friend_of( friend,friend_owner) VALUES ('1', '10');
INSERT INTO friend_of( friend,friend_owner) VALUES ('4', '3');
INSERT INTO friend_of( friend,friend_owner) VALUES ('6', '7');
INSERT INTO friend_of( friend,friend_owner) VALUES ('2', '5');
INSERT INTO friend_of( friend,friend_owner) VALUES ('3', '2');

/*dummy data for add_editors_group*/
INSERT INTO add_editors_group( groupid,userid,date_added) VALUES ('1', '1','2003-12-02');
INSERT INTO add_editors_group( groupid,userid,date_added) VALUES ('2', '2','2002-12-02');
INSERT INTO add_editors_group( groupid,userid,date_added) VALUES ('3', '1','2000-12-02');
INSERT INTO add_editors_group( groupid,userid,date_added) VALUES ('4', '7','2000-12-02');
INSERT INTO add_editors_group( groupid,userid,date_added) VALUES ('5', '8','2010-12-02');
INSERT INTO add_editors_group( groupid,userid,date_added) VALUES ('6', '10','2013-12-02');

/*dummy data for add_to_group*/
INSERT INTO add_to_group( groupid,userid,date_added) VALUES ('1', '1','2003-12-02');
INSERT INTO add_to_group( groupid,userid,date_added) VALUES ('2', '10','2003-12-02');
INSERT INTO add_to_group( groupid,userid,date_added) VALUES ('3', '2','2003-12-02');
INSERT INTO add_to_group( groupid,userid,date_added) VALUES ('4', '7','2003-12-02');
INSERT INTO add_to_group( groupid,userid,date_added) VALUES ('5', '9','2003-12-02');
INSERT INTO add_to_group( groupid,userid,date_added) VALUES ('6', '3','2003-12-02');

/*dummy data create_group*/
INSERT INTO create_group( groupid,userid,date_created) VALUES ('1', '1','2003-12-02');
INSERT INTO create_group( groupid,userid,date_created) VALUES ('2', '10','2003-12-02');
INSERT INTO create_group( groupid,userid,date_created) VALUES ('3', '2','2003-12-02');
INSERT INTO create_group( groupid,userid,date_created) VALUES ('4', '7','2003-12-02');
INSERT INTO create_group( groupid,userid,date_created) VALUES ('5', '9','2003-12-02');
INSERT INTO create_group( groupid,userid,date_created) VALUES ('6', '3','2003-12-02');


/*dummy data create_content*/
INSERT INTO create_content(userid,groupid,gpostid,date_created) VALUES ('1','1', '1','2003-12-02');
INSERT INTO create_content(userid,groupid,gpostid,date_created) VALUES ('2','2', '2','2003-12-02');
INSERT INTO create_content(userid,groupid,gpostid,date_created) VALUES ('3','3', '3','2003-12-02');
INSERT INTO create_content(userid,groupid,gpostid,date_created) VALUES ('4','4', '4','2003-12-02');
INSERT INTO create_content(userid,groupid,gpostid,date_created) VALUES ('5','5', '5','2003-12-02');
INSERT INTO create_content(userid,groupid,gpostid,date_created) VALUES ('6','6', '6','2003-12-02');


