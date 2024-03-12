CREATE FULLTEXT INDEX idx_title_body ON posts(title, body);

SELECT *, MATCH(title, body) AGAINST('react redux')
FROM posts
-- WHERE MATCH(title, body) AGAINST('react -redux +form' IN BOOLEAN MODE);
WHERE MATCH(title, body) AGAINST('"handling a form"' IN BOOLEAN MODE);