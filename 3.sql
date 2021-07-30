
USE blogs;

-- SELECT * FROM BlogTags
-- JOIN Tags ON Tags.id = BlogTags.tagid
-- WHERE blogid = 1;
-- SELECT Tags.id, Tags.name FROM BlogTags
-- JOIN Tags ON Tags.id = BlogTags.tagid
-- WHERE blogid = 1;



DELIMITER $$
CREATE PROCEDURE spBlogTags(blog_id INT)
BEGIN
	SELECT Tags.id, Tags.name FROM BlogTags
	JOIN Tags ON Tags.id = BlogTags.tagid
	WHERE blogid = blog_id;
END $$
DELIMITER ;


SELECT * from BlogTags;

CALL spBlogTags(2);