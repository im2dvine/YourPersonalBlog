 
USE blogs;
 
INSERT INTO Authors (email, name) VALUE ('test@test.com', 'Test Author');
-- INSERT INTO Blogs (title, content, authorid) VALUE ('Test Blog Title', 'Test Blog Content', 1);
INSERT INTO Blogs (title, content, authorid) VALUE ('Some Other Test Title', 'Test Blog Content', 1);
--  INSERT INTO Tags (name) VALUE ('Test Tag Lol');
INSERT INTO Tags (name) VALUE ('Another Test Tag');
--  INSERT INTO BlogTags (blogid, tagid) VALUE (1, 1);
-- INSERT INTO BlogTags (blogid, tagid) VALUE (1, 2);
INSERT INTO BlogTags (blogid, tagid) VALUE (2, 2);
 
 
 
SELECT * FROM Authors;
SELECT * FROM Blogs;
SELECT * FROM Tags;
SELECT * FROM BlogTags;
 