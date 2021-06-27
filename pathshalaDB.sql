/*									SQL Database On 
									PATHSHALA Made By
									Walidulhasan Boniamin
									Trainee Id: 1258683
									Batch ID: ESAD-CS/PNTL-A/45/01
*/


USE master
GO
--CREATE DATABASE pathshalaDB
--GO

DROP DATABASE IF EXISTS pathshalaDB
GO

CREATE DATABASE pathshalaDB
ON
(
	NAME= EMS,
	FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.MAHMUDSABUJ\MSSQL\DATA\pathshalaDB.mdf',
	SIZE=20MB,
	MAXSIZE=1GB,
	FILEGROWTH=10%
)
LOG ON
(
	NAME=EMS_log,
	FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.MAHMUDSABUJ\MSSQL\DATA\pathshalaDB.ldf',
	SIZE=10MB,
	MAXSIZE=1GB,
	FILEGROWTH=10%
)
GO
USE pathshalaDB
GO

--Creating Object for Securiry and Instructor
CREATE TABLE tbl_SingUpStudent
(
	studentId INT PRIMARY KEY IDENTITY,
	userName VARCHAR(60) NOT NULL,
	emailAddress VARCHAR(70) UNIQUE NOT NULL,
	[password] VARCHAR(20) NOT NULL
)
GO
DELETE FROM tbl_SingUpStudent WHERE emailAddress='waa@gmail.com' AND password='123'
select * from tbl_SingUpStudent
insert into tbl_SingUpStudent values ('kamal','a@gmail.com','ab')
--Creating Objects Script for Students--
CREATE TABLE tbl_basicProfileStudent
(
	basicProfileStudentId INT PRIMARY KEY IDENTITY,
	studentId INT REFERENCES tbl_SingUpStudent(studentId) ON DELETE CASCADE,
	InstructorImage VARCHAR(200) NULL,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	aboutYourSelf VARCHAR(200) NOT NULL,
	ws VARCHAR(200) NULL,
	fb VARCHAR(200) NOT NULL,
	tw VARCHAR(200) NULL,
	li VARCHAR(200) NULL,
	yt VARCHAR(200) NULL
)
GO
INSERT INTO tbl_basicProfileStudent VALUES(1,'aefa.jpg','Kamal','Hossen','I am student','a','b','c','d','d')

SELECT * FROM tbl_basicProfileStudent
CREATE TABLE tbl_SingUpInstructor
(
	instructorId INT IDENTITY(1,1) PRIMARY KEY,
	userName VARCHAR(60) NOT NULL,
	emailAddress VARCHAR(70) UNIQUE NOT NULL,
	[password] VARCHAR(20) NOT NULL
)
GO
--drop table tbl_SingUpInstructor
--select * from tbl_SingUpInstructor
--insert into tbl_SingUpInstructor values('Kamal','ka@gmail.com','12')
--go
CREATE TABLE tbl_VerifiedInstructor
(
	verifiedId INT PRIMARY KEY IDENTITY(100,1),
	VerifiedInstructorId VARCHAR(30) NOT NULL	
)
Go

select * from tbl_VerifiedInstructor

CREATE TABLE tbl_Discount
(
	discountId INT PRIMARY KEY IDENTITY(1,1),
	courseId INT REFERENCES tbl_courseInformation(courseId) ON DELETE CASCADE,
	courseCategory VARCHAR(60) NOT NULL,
	discountAmount VARCHAR(80) NOT NULL,
	offerStart DATE NOT NULL,
	offerEnd DATE  NULL
)
GO

CREATE TABLE tbl_basicProfileInstructor
(
	basicProfileInstructorId INT PRIMARY KEY IDENTITY,
	instructorId INT REFERENCES tbl_SingUpInstructor(instructorId) ON DELETE CASCADE,
	InstructorImage VARCHAR(200) NULL,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	instructorHeadline VARCHAR(150) NOT NULL,
	aboutYourSelf VARCHAR(200) NOT NULL,
	ws VARCHAR(200) NULL,
	fb VARCHAR(200) NOT NULL,
	tw VARCHAR(200) NULL,
	li VARCHAR(200) NULL,
	yt VARCHAR(200) NULL
)
GO
select * from tbl_basicProfileInstructor
CREATE TABLE tbl_Address
(
	addressId INT PRIMARY KEY IDENTITY NOT NULL,
	academyName VARCHAR(50)  NULL,
	countryName VARCHAR(50) NOT NULL,
	[address] VARCHAR(200)  NULL,
	city VARCHAR(100) NOT NULL,
	state_Region VARCHAR(50)  NULL,
	zip VARCHAR(20)  NULL,
	phoneNo VARCHAR(30) NOT NULL
)
GO

--Composite key with Address,Student,Instructor

CREATE TABLE tbl_AddressStudentInstructor
(
	AddressStudentInstructor INT  IDENTITY NOT NULL,
	addressId INT REFERENCES tbl_Address(addressId),
	basicProfileInstructorId INT REFERENCES tbl_basicProfileInstructor(basicProfileInstructorId),
	basicProfileStudentId INT REFERENCES tbl_basicProfileStudent (basicProfileStudentId),
	PRIMARY KEY(addressId,basicProfileInstructorId,basicProfileStudentId,AddressStudentInstructor),
)
GO



--Create New Course Objects for Instructor Role
CREATE TABLE tbl_courseInformation
(
	courseId INT IDENTITY(1,1) PRIMARY KEY,
	courseTitle VARCHAR(200) NOT NULL,
	courseDescription VARCHAR(400)  NULL,
	[language] VARCHAR(50) NOT NULL,
	category VARCHAR(100) NOT NULL,
	subCategory VARCHAR(100) NOT NULL,
	currency NVARCHAR(10) NOT NULL,
	price MONEY NOT NULL,
	coverImage NVARCHAR(200) NULL,
	promotionalVideo NVARCHAR(200) NULL,
	courseContentTitle VARCHAR(200)  NULL,
	courseFile VARCHAR(200) NULL,
	lectureSort VARCHAR(100) NULL,
	lectureDescription VARCHAR(100) NULL,
	lectureVolume VARCHAR(500) NOT NULL,
	lectureDuration VARCHAR(500) NOT NULL
)
GO
--delete from tbl_courseInformation where courseId=7
--SELECT  DISTINCT category,courseId FROM tbl_courseInformation
--INSERT INTO tbl_courseInformation VALUES ('courseTitle','courseDescription','[language]','category','subCategory','currency',200.0,'AcoverImage',
--'promotionalVideo','courseContentTitle','courseFile','lectureSort','lectureDescription','lectureVolume','lectureDuration')
--GO



----------------------------OPERATIONS-----------------------


--delete from multiple tables
--Begin try
--	Begin Tran
--	Declare @GenderToDelete INT=8
--	Delete from tbl_Discount WHERE courseId=@GenderToDelete
--	Delete from tbl_courseInformation Where courseId=@GenderToDelete
--	Commit Tran
--End try
--Begin Catch
--	Rollback Tran
--End Catch
--GO