CREATE DATABASE IF NOT EXISTS ph2-webapp;
USE ph2-webapp;

CREATE TABLE languages (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    language VARCHAR(255) COMMENT '学習言語',
    color VARCHAR(255) COMMENT '色',
);

-- テーブルを定義するSQL文
CREATE TABLE contents (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    content VARCHAR(255) COMMENT 'コンテンツ',
    color VARCHAR(255) COMMENT '色',
);

CREATE TABLE hours (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    hour INT COMMENT '学習時間',
    date DATETIME COMMENT '日時',
);

CREATE TABLE hours_contents (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    content_id INT AUTO_INCREMENT PRIMARY KEY COMMENT '学習コンテンツID',
    hour_id  INT AUTO_INCREMENT PRIMARY KEY COMMENT '学習時間ID',
    FOREIGN KEY (`content_id`) REFERENCES contents(`id`),
    FOREIGN KEY (`hours_id`) REFERENCES hours(`id`)
);

CREATE TABLE hours_languages (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    language_id INT AUTO_INCREMENT PRIMARY KEY COMMENT '学習言語ID',
    hour_id  INT AUTO_INCREMENT PRIMARY KEY COMMENT '学習時間ID',
    FOREIGN KEY (`language_id`) REFERENCES languages(`id`)
    FOREIGN KEY (`hour_id`) REFERENCES hours(`id`)
);



INSERT INTO `hours` VALUES
(1, '2022-06-14', 3),
(2, '2022-02-15', 4),
(3, '2023-02-02', 5),
(4, '2023-02-28', 6),
(5, '2023-02-27', 7),
(6, '2023-02-26', 9),
(7, '2023-02-25', 0),
(8, '2023-02-24', 1),
(9, '2023-02-23', 2),
(10, '2023-02-02', 3),
(11, '2023-02-03', 12),
(12, '2023-02-04', 17),
(13, '2023-02-05', 10),
(14, '2023-02-06', 24),
(15, '2023-02-07', 22),
(16, '2023-02-08', 24),
(17, '2023-02-09', 20),
(18, '2023-02-10', 19),
(19, '2023-02-11', 7),
(20, '2023-02-12', 18),
(21, '2023-02-13', 17),
(22, '2023-02-14', 13),
(23, '2023-02-15', 13),
(24, '2023-02-16', 0),
(25, '2023-02-17', 0),
(26, '2023-02-18', 0),
(27, '2023-02-19', 1),
(28, '2023-02-20', 1),
(29, '2023-02-21', 14),
(30, '2023-02-22', 12);

-- 後ろにinsertしていく

INSERT INTO `order_details` VALUES 
(1, 1, '本', 3, 1000, now(), now()),
(2, 1, 'ペン', 10, 150, now(), now()),
(3, 1, 'ポストイット', 1, 500, now(), now()),
(4, 2, '本', 10, 300, now(), now()),
(5, 2, 'モニター', 1, 30000, now(), now()),
(6, 3, 'ピザ', 1, 3000, now(), now()),
(7, 3, '寿司', 2, 4000, now(), now()),
(8, 3, 'ビール', 10, 400, now(), now());