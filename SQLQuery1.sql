 --- CREATE DATABASE
CREATE DATABASE Aptech;

 ---create table

 CREATE TABLE firsttb(
 ID INT PRIMARY KEY identity(1,1) NOT NULL,
 Name VARCHAR(100)
 );
 --- ftech table
 SELECT * FROM firsttb;

 --creation Table 
 INSERT INTO firsttb(Name) VALUES ('faham');
 INSERT INTO firsttb(Name) VALUES ('ahmed');
 INSERT INTO firsttb(Name) VALUES ('kashan');
 INSERT INTO firsttb(Name) VALUES ('zain');
 
--- Second Table
 
 ---create table

 CREATE TABLE firstb(
 ID INT PRIMARY KEY identity(1,1) NOT NULL,
 Name VARCHAR(100)
 );
 --- ftech table
 SELECT * FROM firstb;

 --creation Table 
 INSERT INTO firstb(Name) VALUES ('wasey');
 INSERT INTO firstb(Name) VALUES ('iqbal');
 INSERT INTO firstb(Name) VALUES ('khuram');
 INSERT INTO firstb(Name) VALUES ('aziz');

 --- THIRD TABLE 



 ---create table

 CREATE TABLE datatb(
 ID INT PRIMARY KEY identity(1,1) NOT NULL,
 Name VARCHAR(100)
 );
 --- ftech table
 SELECT * FROM datatb;

 --creation Table 
 INSERT INTO datatb(Name) VALUES ('faris');
 INSERT INTO datatb(Name) VALUES ('ayan');
 INSERT INTO datatb(Name) VALUES ('moiz');
 INSERT INTO datatb(Name) VALUES ('saad');