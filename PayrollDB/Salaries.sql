CREATE TABLE [dbo].[Salaries]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [employee_id] INT NOT NULL, 
    [currency_id] INT NOT NULL, 
    [annual_amount] DECIMAL(18, 2) NOT NULL
)
GO 
ALTER TABLE dbo.salaries ADD CONSTRAINT FK_SALARIESEMPLOYEE FOREIGN KEY 
 (employee_id) REFERENCES dbo.employees (id)
 GO
 ALTER TABLE dbo.salaries ADD CONSTRAINT FK_SALARIESCURRENCIES FOREIGN KEY 
 (currency_id) REFERENCES dbo.currencies ([id])
 GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Id field.',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Salaries',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FK Employees',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Salaries',
    @level2type = N'COLUMN',
    @level2name = N'employee_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FK Currencies',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Salaries',
    @level2type = N'COLUMN',
    @level2name = N'currency_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Total yearly income.',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Salaries',
    @level2type = N'COLUMN',
    @level2name = N'annual_amount'