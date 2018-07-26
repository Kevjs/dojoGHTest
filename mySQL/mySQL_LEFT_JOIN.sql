use twitter;

SELECT users.first_name as followed, users2.first_name as follower
FROM users
LEFT JOIN follows
ON users.id = follows.followed_id
LEFT JOIN users as users2
ON users2.id = follows.follower_id;