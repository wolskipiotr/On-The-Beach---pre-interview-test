CREATE TABLE [dbo].[Currencies]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    unit NCHAR(255) NOT NULL, 
    [conversion_factor] DECIMAL(12, 8) NOT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Currency Id. ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Currencies',
    @level2type = N'COLUMN',
    @level2name = N'id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Unit name.',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Currencies',
    @level2type = N'COLUMN',
    @level2name = N'unit'
