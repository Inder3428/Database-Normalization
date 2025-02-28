-- Check if [Udt] schema exists before creating
IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'Udt')
BEGIN
    EXEC('CREATE SCHEMA [Udt]')
END
-- Check if [Utils] schema exists before creating
IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'Utils')
BEGIN
    EXEC('CREATE SCHEMA [Utils]')
END

--surrogateKeyInt
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'SurrogateKeyInt' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
    CREATE TYPE [Udt].[SurrogateKeyInt] FROM [int] NULL
END

--DateAdded
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'DateAdded' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[DateAdded] FROM [datetime2] NOT NULL
END

--ClassTime
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'ClassTime' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[ClassTime] FROM nchar(5) NOT NULL
END

--IndividualProject
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'IndividualProject' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[IndividualProject] FROM nvarchar (60) NOT NULL
END
--Name
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'Name' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[Name] FROM nvarchar(55) NOT NULL
END
--LastName
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'LastName' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[LastName] FROM nvarchar(50) NOT NULL
END

--FirstName
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'FirstName' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[FirstName] FROM nvarchar(50) NOT NULL
END

--FullName
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'FullName' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[FullName] FROM nvarchar(100) NOT NULL
END


--GroupName
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'GroupName' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[GroupName] FROM nvarchar(20) NOT NULL
END

--Text
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'Text' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[Description] FROM nvarchar(100) NOT NULL
END

--Row
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'Row' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[Row] FROM INT NOT NULL
END

--Building
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'Building' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[Building] FROM nchar(5)  NULL
END
--RoomNumber
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'RoomNumber' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[RoomNumber] from VARCHAR(10)  NULL
END
--Number
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'Number' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[Number] from INT NOT NULL
END

--DeptName
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'DeptName' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[DeptName] FROM nchar(4) NOT NULL
END


--CourseName
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'CourseName' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[CourseName] FROM nvarchar(20) NOT NULL
END

--CourseDescription
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'CourseDescription' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[CourseDescription] FROM nvarchar(50) NOT NULL
END

--CourseDay
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'CourseDay' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[CourseDay] FROM nvarchar(50) NOT NULL
END

--CourseTime
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'CourseTime' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[CourseTime] FROM nvarchar(50) NOT NULL
END

--Enrolled
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'Enrolled' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[Enrolled] FROM INT NOT NULL
END

--Limit
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'Limit' AND schema_id = SCHEMA_ID('Udt'))
BEGIN
CREATE TYPE [Udt].[Limit] FROM INT NOT NULL
END

--InsMode
IF NOT EXISTS(SELECT 1 FROM sys.types WHERE name = 'InsMode' and schema_id = SCHEMA_ID('Udt'))
BEGIN 
	CREATE TYPE [Udt].[InsMode] FROM varchar(50) NOT NULL
END
