DROP TABLE IF EXISTS `example`;
CREATE TABLE IF NOT EXISTS `example` (
    `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `email` varchar(255) NOT NULL COMMENT 'email',
    `message` TEXT DEFAULT 'Hello World' COMMENT 'message',
    `create_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY (`id`),
    UNIQUE (`email`),
    INDEX INDEX_email (`email`),
    FULLTEXT FULLTEXT_INDEX_text (`message`),
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT 'example table description';

DROP TABLE IF EXISTS `child`;
CREATE TABLE IF NOT EXISTS `child` (
    `parent_id` INT,
    FOREIGN KEY (`parent_id`) REFERENCES example(`id`)
    ON DELETE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT 'child table description';

-- @see http://www.limy.org/program/db/mysql/mysql_create_table.html