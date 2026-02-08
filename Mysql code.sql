create database IP_Eval_1;
use IP_Eval_1;
CREATE TABLE student (
    id            VARCHAR(36) PRIMARY KEY,
    roll_no       INT(3) NOT NULL UNIQUE,
    name          VARCHAR(100) NOT NULL,
    email         VARCHAR(100) NOT NULL UNIQUE,
    mobile_no     VARCHAR(15) NOT NULL,
    department    VARCHAR(50),
    year          VARCHAR(10),
    division      VARCHAR(10),
    blood_group   VARCHAR(5),
    city          VARCHAR(50),
    pincode       int(10),
    state         VARCHAR(50)
);
select * from student;
truncate table student;
DELETE FROM student where id='S101';


create table admin_login(
	username varchar(50) unique not null,
    password varchar(35)
);
insert into admin_login(username,password) values
('admin1','1234'),('admin2','1234');
select * from admin_login;

CREATE TABLE student_login (
    student_id VARCHAR(36) PRIMARY KEY,
    password   VARCHAR(255) NOT NULL,
    CONSTRAINT fk_student_login
        FOREIGN KEY (student_id)
        REFERENCES student(id)
        ON DELETE CASCADE
);
select * from student_login;

DELIMITER $$
CREATE TRIGGER trg_student_after_insert
AFTER INSERT ON student
FOR EACH ROW
BEGIN
    INSERT INTO student_login (student_id, password)
    VALUES (
        NEW.id,
        '123456'
    );
END$$
DELIMITER ;






