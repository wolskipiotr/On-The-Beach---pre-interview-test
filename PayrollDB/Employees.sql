CREATE TABLE [dbo].[Employees]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [name] NCHAR(255) NOT NULL, 
    [role_id] INT NOT NULL
)

GO

ALTER TABLE dbo.employees ADD CONSTRAINT FK_EMPLOYEE_ROLE FOREIGN KEY
(role_id) REFERENCES dbo.Roles (id) ON UPDATE NO ACTION ON DELETE NO ACTION 

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Holds the employee id.',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Employees',
    @level2type = N'COLUMN',
    @level2name = N'id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Employee name: Surname FirstName',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Employees',
    @level2type = N'COLUMN',
    @level2name = N'name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FK: Role',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Employees',
    @level2type = N'COLUMN',
    @level2name = N'role_id'