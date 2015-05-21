/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
SET IDENTITY_INSERT dbo.currencies ON

INSERT INTO dbo.Currencies (id, unit, conversion_factor) VALUES 
(1 , 'GBP', 1),
(2 , 'USD', 1.54),
(3 , 'Rocks', 10),
(4 , 'Sweets', 12),
(5 , 'Credits' , 800)

SET IDENTITY_INSERT dbo.Currencies OFF

GO

SET IDENTITY_INSERT dbo.Roles  ON

INSERT INTO dbo.Roles (id, name) VALUES 
(1, 'Staff'),(2, 'Manager'),(3, 'Owner')

SET IDENTITY_INSERT dbo.Roles OFF

GO

SET IDENTITY_INSERT dbo.employees ON

INSERT INTO dbo.Employees (id, name, role_id) VALUES 
(1, 'Homer Simpson', 1),
(2, 'Sterling Archer', 1),
(3, 'Eric Cartman', 1),
(4, 'Fred Flintstone', 2),
(5, 'Professor Farnsworth', 3)

SET IDENTITY_INSERT dbo.employees OFF

GO

SET IDENTITY_INSERT dbo.salaries ON

INSERT INTO dbo.Salaries (id, employee_id, currency_id, annual_amount)  VALUES 
(1, 1, 2, 22000),
(2, 2, 2, 150000),
(3, 3, 4, 60000),
(4, 4, 3, 900000),
(5, 5, 5, 5000000000)

SET IDENTITY_INSERT dbo.salaries OFF

GO