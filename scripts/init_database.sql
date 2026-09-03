/* 
==============================================================
Create Database and Schemas
==============================================================
Script Purpose:









*/

--Drop and recreate the "datawarehouse" database
if EXISTS (SELECT 1 FROM sys.databases WHERE name="datawarehouse")
BEGIN
  ALTER database datawarehose SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE datawarehouse;

END;
GO



--Create Database "datawarehouse"
CREATE database datawarehouse;
use datawarehouse;

CREATE schema bronze;

CREATE schema silver;

CREATE schema gold;

