/*
SELECT users.first_name, user2.first_name
FROM users 
LEFT JOIN friendships ON friendships.friend_1_id = users.id 
LEFT JOIN users as user2 ON user2.id = friendships.friend_2_id
WHERE friend_1_id = 4
OR friend_2_id = 4;
*/
/*
SELECT users.first_name, user2.first_name
FROM users 
LEFT JOIN friendships ON friendships.friend_1_id = users.id 
LEFT JOIN users as user2 ON user2.id = friendships.friend_2_id;
*/

SELECT U.first_name, count(fl2.friend_1_id)
FROM users as U
	LEFT JOIN friendships AS fl ON U.id = fl.friend_1_id
	LEFT JOIN friendships AS fl2 ON fl.friend_2_id = fl2.friend_1_id and fl2.friend_2_id = U.id
Group BY U.id;