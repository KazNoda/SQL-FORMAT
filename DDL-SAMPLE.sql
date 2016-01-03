
CREATE TABLE IF NOT EXISTS example (
    id INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
    email varchar(256) NOT NULL COMMENT 'email',
    message TEXT DEFAULT 'Hello World' COMMENT 'message',
    PRIMARY KEY (id),
    INDEX INDEX_email (email)
) DEFAULT CHARSET=utf8