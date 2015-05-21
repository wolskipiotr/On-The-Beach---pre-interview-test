CREATE TABLE [dbo].[Currencies] (
    [id]                INT             IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([id] ASC),
    [unit]              NCHAR (255)     NOT NULL,
    [conversion_factor] DECIMAL (12, 8) NOT NULL
);

GO
CREATE TABLE [dbo].[Employees] (
    [id]      INT         IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([id] ASC),
    [name]    NCHAR (255) NOT NULL,
    [role_id] INT         NOT NULL
);

GO
CREATE TABLE [dbo].[Roles] (
    [id]   INT         IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([id] ASC),
    [name] NCHAR (255) NOT NULL
);

GO
CREATE TABLE [dbo].[Salaries] (
    [Id]            INT IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([Id] ASC),
    [employee_id]   INT NOT NULL,
    [currency_id]   INT NOT NULL,
    [annual_amount] INT NOT NULL
);

GO
ALTER TABLE [dbo].[Employees]
    ADD CONSTRAINT [FK_EMPLOYEE_ROLE] FOREIGN KEY ([role_id]) REFERENCES [dbo].[Roles] ([id]);

GO
ALTER TABLE [dbo].[Salaries]
    ADD CONSTRAINT [FK_SALARIESCURRENCIES] FOREIGN KEY ([currency_id]) REFERENCES [dbo].[Currencies] ([id]);

GO
ALTER TABLE [dbo].[Salaries]
    ADD CONSTRAINT [FK_SALARIESEMPLOYEE] FOREIGN KEY ([employee_id]) REFERENCES [dbo].[Employees] ([id]);

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Currency Id. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Currencies', @level2type = N'COLUMN', @level2name = N'id';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unit name.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Currencies', @level2type = N'COLUMN', @level2name = N'unit';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Holds the employee id.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees', @level2type = N'COLUMN', @level2name = N'id';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employee name: Surname FirstName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees', @level2type = N'COLUMN', @level2name = N'name';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'FK: Role', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees', @level2type = N'COLUMN', @level2name = N'role_id';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Role Id.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Roles', @level2type = N'COLUMN', @level2name = N'id';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Role name.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Roles', @level2type = N'COLUMN', @level2name = N'name';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Total yearly income.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Salaries', @level2type = N'COLUMN', @level2name = N'annual_amount';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'FK Currencies', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Salaries', @level2type = N'COLUMN', @level2name = N'currency_id';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'FK Employees', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Salaries', @level2type = N'COLUMN', @level2name = N'employee_id';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Id field.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Salaries', @level2type = N'COLUMN', @level2name = N'Id';

GO
