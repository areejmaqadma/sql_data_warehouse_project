/* 
==============================================================
Create Database and Schemas
==============================================================
Script Purpose:
This script creates a new database 'datawarehouse' after checking if it already exists.
If the database exists, it is dropped and recreated . Additionaly, the script sets up three schemas withen 
the database: 'bronze', 'silver' and 'gold'.

WARNING:
Running this script will drop the entire 'datawarehouse' database if it is exists.
All data in the database will permanently deleted . Proceed with caution 
and ensure you have proper backups before running this script.

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

