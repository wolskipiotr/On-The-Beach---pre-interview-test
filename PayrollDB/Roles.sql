CREATE TABLE [dbo].[Roles]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [name] NCHAR(255) NOT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Role Id.',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Roles',
    @level2type = N'COLUMN',
    @level2name = N'id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Role name.',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Roles',
    @level2type = N'COLUMN',
    @level2name = N'name'