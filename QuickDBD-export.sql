-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE `Child data` (
    `name` int  NOT NULL ,
    `age` int  NOT NULL ,
    `birthdate` string  NOT NULL ,
    `allergies` var  NOT NULL ,
    `special instructions` var  NOT NULL ,
    `parent` int  NOT NULL ,
    `drop off/pickup times` int  NOT NULL ,
    PRIMARY KEY (
        `name`
    )
);

CREATE TABLE `Parent data` (
    `name` varchar(50)  NOT NULL ,
    `address` varchar(50)  NOT NULL ,
    `child` varchar(50)  NOT NULL ,
    `co-parent` int  NOT NULL ,
    `car make/model/color` int  NOT NULL ,
    `license plate #` int  NOT NULL ,
    `driver's license number` int  NOT NULL ,
    PRIMARY KEY (
        `driver's license number`
    )
);

CREATE TABLE `Staff data` (
    `name` int  NOT NULL ,
    `address` int  NOT NULL ,
    `children responsable for` int  NOT NULL ,
    `pay rate` int  NOT NULL ,
    PRIMARY KEY (
        `name`
    )
);

CREATE TABLE `School supplies data` (
    `books` int  NOT NULL ,
    `tech` int  NOT NULL ,
    `pens/penciles/crayons` int  NOT NULL ,
    `child assigned to` int  NOT NULL 
);

ALTER TABLE `Child data` ADD CONSTRAINT `fk_Child data_name_parent` FOREIGN KEY(`name`, `parent`)
REFERENCES `Parent data` (`child`, `name`);

ALTER TABLE `Parent data` ADD CONSTRAINT `fk_Parent data_child` FOREIGN KEY(`child`)
REFERENCES `School supplies data` (`child assigned to`);

ALTER TABLE `Parent data` ADD CONSTRAINT `fk_Parent data_co-parent` FOREIGN KEY(`co-parent`)
REFERENCES `Child data` (`parent`);

ALTER TABLE `Staff data` ADD CONSTRAINT `fk_Staff data_name` FOREIGN KEY(`name`)
REFERENCES `School supplies data` (`child assigned to`);

