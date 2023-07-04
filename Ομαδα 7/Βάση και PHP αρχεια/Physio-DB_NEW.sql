SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `PhysioDB` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `PhysioDB`;

CREATE TABLE admin_login (
  username VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL
);

CREATE TABLE physiotherapy (
  name VARCHAR(50) NOT NULL,
  address VARCHAR(50) NOT NULL,
  afm VARCHAR(9) NOT NULL
);

CREATE TABLE service (
  password VARCHAR(50) NOT NULL,
  name VARCHAR(50) NOT NULL,
  cost VARCHAR(50) NOT NULL,
  description TEXT NOT NULL,
  Center VARCHAR(50) NOT NULL
); 

INSERT INTO `admin_login` (`username`, `password`) VALUES 
('babhs', '1234');
 

CREATE TABLE doctor (
  username VARCHAR(50) PRIMARY KEY,
  password VARCHAR(50) NOT NULL,
  physioCenter VARCHAR(50) NOT NULL
  );
  
  INSERT INTO `doctor` (`username`, `password`,  `physioCenter`)VALUES 
  ('Giannakopoulos', 'pass123', 'C3'),('Andronikou', 'pass456', 'C2'),('Xristidou', 'pass789', 'C1');
  
-- table about patients
CREATE TABLE patient (
  username VARCHAR(50) PRIMARY KEY,
  password VARCHAR(50) NOT NULL,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(50) NOT NULL,
  AMKA VARCHAR(11) NOT NULL,
  myDoctor VARCHAR(50) NOT NULL
  );
  
  
CREATE TABLE appointments(
id VARCHAR(10) PRIMARY KEY,
doctorName VARCHAR(50) not null,
date VARCHAR(50) not null,
hour VARCHAR(50) not null,
available VARCHAR(50) not null,
appointmentRequest VARCHAR(50) not null,
patientName VARCHAR(50),
appointmentDescription VARCHAR(50),
cost INT
);


INSERT INTO `physiotherapy` (`name`, `address`, `afm`)
VALUES ('Physilotherapefthrio', 'Agios Dhmhtrios 25', '1542');

INSERT INTO `appointments` (`id`,`doctorName`, `date`, `hour`, `available`, `appointmentRequest`, `patientName`, `appointmentDescription`, `cost`)VALUES
('x1', 'Xristidou', '2023-06-05', '10:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x2', 'Xristidou', '2023-06-05', '11:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x3', 'Xristidou', '2023-06-05', '12:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x4', 'Xristidou', '2023-06-05', '18:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x5', 'Xristidou', '2023-06-06', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x6', 'Xristidou', '2023-06-06', '12:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x7', 'Xristidou', '2023-06-06', '14:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x8', 'Xristidou', '2023-06-06', '17:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x9', 'Xristidou', '2023-06-07', '11:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x10', 'Xristidou', '2023-06-07', '13:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x11', 'Xristidou', '2023-06-07', '14:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x12', 'Xristidou', '2023-06-08', '09:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x13', 'Xristidou', '2023-06-08', '11:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x14', 'Xristidou', '2023-06-08', '15:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x15', 'Xristidou', '2023-06-08', '16:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x16', 'Xristidou', '2023-06-09', '14:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x17', 'Xristidou', '2023-06-09', '15:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x18', 'Xristidou', '2023-06-09', '17:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x19', 'Xristidou', '2023-06-10', '09:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x20', 'Xristidou', '2023-06-10', '10:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x21', 'Xristidou', '2023-06-11', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x22', 'Xristidou', '2023-06-11', '13:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x23', 'Xristidou', '2023-06-11', '15:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x24', 'Xristidou', '2023-06-12', '10:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x25', 'Xristidou', '2023-06-12', '12:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x26', 'Xristidou', '2023-06-12', '14:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x27', 'Xristidou', '2023-06-12', '16:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x28', 'Xristidou', '2023-06-13', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x29', 'Xristidou', '2023-06-13', '13:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x30', 'Xristidou', '2023-06-13', '15:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x31', 'Xristidou', '2023-06-14', '10:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x32', 'Xristidou', '2023-06-14', '12:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x33', 'Xristidou', '2023-06-14', '14:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x34', 'Xristidou', '2023-06-15', '10:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x35', 'Xristidou', '2023-06-15', '12:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x36', 'Xristidou', '2023-06-15', '14:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x37', 'Xristidou', '2023-06-15', '16:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x38', 'Xristidou', '2023-06-16', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x39', 'Xristidou', '2023-06-16', '13:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x40', 'Xristidou', '2023-06-16', '15:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x41', 'Xristidou', '2023-06-17', '10:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x42', 'Xristidou', '2023-06-17', '12:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x43', 'Xristidou', '2023-06-17', '14:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x44', 'Xristidou', '2023-06-18', '10:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x45', 'Xristidou', '2023-06-18', '12:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x46', 'Xristidou', '2023-06-18', '14:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x47', 'Xristidou', '2023-06-18', '16:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x48', 'Xristidou', '2023-06-19', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x49', 'Xristidou', '2023-06-19', '13:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x50', 'Xristidou', '2023-06-19', '15:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x51', 'Xristidou', '2023-06-20', '10:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x52', 'Xristidou', '2023-06-20', '12:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x53', 'Xristidou', '2023-06-20', '14:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x54', 'Xristidou', '2023-06-21', '10:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x55', 'Xristidou', '2023-06-21', '12:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x56', 'Xristidou', '2023-06-21', '14:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x57', 'Xristidou', '2023-06-21', '16:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x58', 'Xristidou', '2023-06-22', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x59', 'Xristidou', '2023-06-22', '13:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x60', 'Xristidou', '2023-06-22', '15:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x61', 'Xristidou', '2023-06-23', '10:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x62', 'Xristidou', '2023-06-23', '12:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x63', 'Xristidou', '2023-06-23', '14:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x64', 'Xristidou', '2023-06-24', '10:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x65', 'Xristidou', '2023-06-24', '12:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x66', 'Xristidou', '2023-06-24', '14:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x67', 'Xristidou', '2023-06-24', '16:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x68', 'Xristidou', '2023-06-25', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x69', 'Xristidou', '2023-06-25', '13:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x70', 'Xristidou', '2023-06-25', '15:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x71', 'Xristidou', '2023-06-26', '10:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x72', 'Xristidou', '2023-06-26', '12:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x73', 'Xristidou', '2023-06-26', '14:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x74', 'Xristidou', '2023-06-26', '16:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x75', 'Xristidou', '2023-06-27', '11:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x76', 'Xristidou', '2023-06-27', '13:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x77', 'Xristidou', '2023-06-27', '15:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x78', 'Xristidou', '2023-06-28', '10:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x79', 'Xristidou', '2023-06-28', '12:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x80', 'Xristidou', '2023-06-28', '14:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x81', 'Xristidou', '2023-06-29', '09:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x82', 'Xristidou', '2023-06-29', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x83', 'Xristidou', '2023-06-29', '13:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x84', 'Xristidou', '2023-06-29', '15:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x85', 'Xristidou', '2023-06-30', '10:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x86', 'Xristidou', '2023-06-30', '12:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x87', 'Xristidou', '2023-06-30', '14:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x88', 'Xristidou', '2023-06-30', '16:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x89', 'Xristidou', '2023-07-01', '11:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x90', 'Xristidou', '2023-07-01', '13:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x91', 'Xristidou', '2023-07-01', '14:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x92', 'Xristidou', '2023-07-01', '16:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x93', 'Xristidou', '2023-07-02', '09:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x94', 'Xristidou', '2023-07-02', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x95', 'Xristidou', '2023-07-02', '13:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x96', 'Xristidou', '2023-07-02', '15:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x97', 'Xristidou', '2023-07-03', '10:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x98', 'Xristidou', '2023-07-03', '12:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x99', 'Xristidou', '2023-07-03', '14:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x100', 'Xristidou', '2023-07-03', '16:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x101', 'Xristidou', '2023-07-04', '09:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x102', 'Xristidou', '2023-07-04', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x103', 'Xristidou', '2023-07-04', '13:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x104', 'Xristidou', '2023-07-04', '15:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x105', 'Xristidou', '2023-07-05', '10:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x106', 'Xristidou', '2023-07-05', '12:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x107', 'Xristidou', '2023-07-05', '14:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x108', 'Xristidou', '2023-07-05', '16:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x109', 'Xristidou', '2023-07-06', '09:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x110', 'Xristidou', '2023-07-06', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x111', 'Xristidou', '2023-07-06', '13:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x112', 'Xristidou', '2023-07-06', '15:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x113', 'Xristidou', '2023-07-07', '10:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x114', 'Xristidou', '2023-07-07', '12:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x115', 'Xristidou', '2023-07-07', '14:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x116', 'Xristidou', '2023-07-07', '16:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x117', 'Xristidou', '2023-07-08', '09:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x118', 'Xristidou', '2023-07-08', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x119', 'Xristidou', '2023-07-08', '13:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x120', 'Xristidou', '2023-07-08', '15:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x121', 'Xristidou', '2023-07-09', '10:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x122', 'Xristidou', '2023-07-09', '12:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x123', 'Xristidou', '2023-07-09', '14:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x124', 'Xristidou', '2023-07-09', '16:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x125', 'Xristidou', '2023-07-10', '09:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x126', 'Xristidou', '2023-07-10', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x127', 'Xristidou', '2023-07-10', '13:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x128', 'Xristidou', '2023-07-10', '15:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x129', 'Xristidou', '2023-07-11', '10:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x130', 'Xristidou', '2023-07-11', '12:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x131', 'Xristidou', '2023-07-11', '14:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x132', 'Xristidou', '2023-07-11', '16:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x133', 'Xristidou', '2023-07-12', '09:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x134', 'Xristidou', '2023-07-12', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x135', 'Xristidou', '2023-07-12', '13:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x136', 'Xristidou', '2023-07-12', '15:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x137', 'Xristidou', '2023-07-13', '10:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x138', 'Xristidou', '2023-07-13', '12:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x139', 'Xristidou', '2023-07-13', '14:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x140', 'Xristidou', '2023-07-13', '16:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x141', 'Xristidou', '2023-07-14', '09:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x142', 'Xristidou', '2023-07-14', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x143', 'Xristidou', '2023-07-14', '13:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x144', 'Xristidou', '2023-07-14', '15:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x145', 'Xristidou', '2023-07-15', '10:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x146', 'Xristidou', '2023-07-15', '12:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x147', 'Xristidou', '2023-07-15', '14:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x148', 'Xristidou', '2023-07-15', '16:00:00', TRUE, FALSE, NULL, NULL, NULL),
('x149', 'Xristidou', '2023-07-16', '09:30:00', TRUE, FALSE, NULL, NULL, NULL),
('x150', 'Xristidou', '2023-07-16', '11:00:00', TRUE, FALSE, NULL, NULL, NULL),


	('g1','Giannakopoulos', '2023-05-10', '14:30:00', TRUE, FALSE,'', '', 0),
    ('a1','Andonikou', '2023-08-09', '17:00:00', FALSE, TRUE,NULL, 'masaz', 20);
 
INSERT INTO `patient` (`username`, `password`,`name`,`address`,`AMKA`,`myDoctor`) VALUES 
('P1', '1234','Papadopoulos','add1','01010101011','Xristidou'),('P2', '1234','Papadakis','add2','01010101012','Xristidou'),('P3', '1234','Katialos','add3','01010101013','Andonikou'),('P4', '1234','Kanenas','add4','01010101014','D1');


