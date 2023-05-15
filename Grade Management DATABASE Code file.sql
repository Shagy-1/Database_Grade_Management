CREATE DATABASE GradeBookManager;

USE GradeBookManager;

CREATE TABLE students (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  roll_number VARCHAR(20) NOT NULL,
  class VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE courses (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  code VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE teachers (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE student_courses (
  id INT(11) NOT NULL AUTO_INCREMENT,
  student_id INT(11) NOT NULL,
  course_id INT(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (student_id) REFERENCES students(id),
  FOREIGN KEY (course_id) REFERENCES courses(id)
);

CREATE TABLE teacher_courses (
  id INT(11) NOT NULL AUTO_INCREMENT,
  teacher_id INT(11) NOT NULL,
  course_id INT(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (teacher_id) REFERENCES teachers(id),
  FOREIGN KEY (course_id) REFERENCES courses(id)
);