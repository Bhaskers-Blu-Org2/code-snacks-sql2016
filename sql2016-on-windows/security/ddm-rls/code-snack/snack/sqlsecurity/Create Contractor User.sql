﻿USE [master]
GO

CREATE LOGIN [Contractor] WITH PASSWORD=N'Abc!1234', 
DEFAULT_DATABASE=[AdventureWorks2014], 
DEFAULT_LANGUAGE=[us_english], 
CHECK_EXPIRATION=OFF, 
CHECK_POLICY=OFF
GO

USE [AdventureWorks2014]
GO

CREATE USER [Contractor] FOR LOGIN [Contractor] 
WITH DEFAULT_SCHEMA=[dbo]
GO

ALTER ROLE [db_datareader] ADD MEMBER [Contractor]
GO
