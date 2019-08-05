create database heritage;
use heritage;

DROP TABLE IF EXISTS notice;
CREATE TABLE notice (
	pk INT(11) NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    writer VARCHAR(100) NOT NULL,
    content VARCHAR(10000) DEFAULT NULL,
    regdate TIMESTAMP DEFAULT NOW(),
    viewCnt INT(11) DEFAULT 0,
    primary key (`pk`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS notice_img;
CREATE TABLE notice_img (
	pk int(11) NOT NULL AUTO_INCREMENT,
	noticePk int(11) NOT NULL,
    oriName VARCHAR(300) DEFAULT NULL,
	saveName VARCHAR(300) DEFAULT NULL,
    imgPath VARCHAR(500) DEFAULT NULL,
    PRIMARY KEY (pk),
    FOREIGN KEY (noticePk) REFERENCES notice (pk)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;