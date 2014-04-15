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
