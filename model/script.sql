CREATE DATABASE forum IF NOT EXISTS;
USE forum;

CREATE TABLE post IF NOT EXISTS (
    id int NOT NULL AUTO_INCREMENT,
    post_name varchar(255) NOT NULL,
    content varchar(1500) NOT NULL,
    topic varchar(30) NOT NULL,
    PRIMARY KEY(id)

)

CREATE TABLE comments IF NOT EXISTS (
    id int NOT NULL AUTO_INCREMENT,
    comment_date date,
    nick varchar(30),
    comment varchar(150),
    answer varchar(150),
    fk_post_id int,
    PRIMARY KEY(id)

)

ALTER TABLE 'comments' ADD CONSTRAINT 'fk_post_id' FOREIGN KEY ( 'id' ) REFERENCES 'post' ( 'id' ) ;