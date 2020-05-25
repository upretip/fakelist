-- create database 

CREATE database if not exists fakerdb;

-- use fakerdb

USE fakerdb;


-- create new user and grant all access 

CREATE USER if not exists 'lamp'@'localhost' identified by '1';
GRANT ALL PRIVILEGES ON * . * TO 'lamp'@'localhost';
FLUSH PRIVILEGES;



-- create login table 
CREATE TABLE IF NOT EXISTS  login (
	ID mediumint(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	username varchar(100),
	password varchar(40),
	email varchar(100)
);


-- create category table

CREATE TABLE IF NOT EXISTS Category (
    Category_ID mediumint(9) AUTO_INCREMENT Primary KEY NOT NULL,
    CategoryName varchar(100)
);

-- create Region Table
Create Table IF NOT EXISTS Region (
    Region_ID mediumint(9) AUTO_INCREMENT Primary KEY NOT NULL,
    RegionName varchar(100)
);

-- create subcategory table
CREATE TABLE IF NOT EXISTS SubCategory (
    SubCategory_ID mediumint(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Category_ID mediumint(9),
    CategoryName varchar(100),
    FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID),
);

-- create Location table
CREATE TABLE IF NOT EXISTS Location (
    Location_ID mediumint(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Region_ID mediumint(9),
    LocationName varchar(100)
);

-- create Posts table
CREATE TABLE IF NOT EXISTS Posts (
    Post_ID mediumint(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Title varchar(100),
    Price float(2),
    Description text,
    Email varchar(50),
    Agreement tinyint,
    TimeStamp TimeStamp,
    Image_1 longblob,
    Image_2 longblob,
    Image_3 longblob,
    Image_4 longblob,
    SubCategory_ID mediumint(9),
    Location_ID mediumint(9),
    FOREIGN KEY (SubCategory_ID) REFERENCES SubCategory(SubCategory_ID),
    FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID)
);

-- add region name to the database

INSERT INTO Region
(RegionName) VALUES
('USA'),
('Europe'),
('India');

-- add category

INSERT INTO Category
(CategoryName) VALUES
('Sales'),
('Service'),
('Jobs');