-- I want all posts title with their authors
-- The Four Hour Work Week | Ferris

SELECT posts.title, people.name
FROM posts
JOIN people ON people.id = posts.people_id
WHERE people.name = "Godin";

SELECT posts.title, people.name
FROM posts
LEFT JOIN people ON people.id = posts.people_id
