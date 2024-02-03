IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240127211101_AddedUser'
)
BEGIN
    CREATE TABLE [datanex_users] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(max) NOT NULL,
        [Email] nvarchar(max) NOT NULL,
        [Password] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_datanex_users] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240127211101_AddedUser'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240127211101_AddedUser', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240127221314_AddedCompanyIdOnUser'
)
BEGIN
    DECLARE @var0 sysname;
    SELECT @var0 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_users]') AND [c].[name] = N'Password');
    IF @var0 IS NOT NULL EXEC(N'ALTER TABLE [datanex_users] DROP CONSTRAINT [' + @var0 + '];');
    ALTER TABLE [datanex_users] DROP COLUMN [Password];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240127221314_AddedCompanyIdOnUser'
)
BEGIN
    DECLARE @var1 sysname;
    SELECT @var1 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_users]') AND [c].[name] = N'Email');
    IF @var1 IS NOT NULL EXEC(N'ALTER TABLE [datanex_users] DROP CONSTRAINT [' + @var1 + '];');
    ALTER TABLE [datanex_users] ALTER COLUMN [Email] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240127221314_AddedCompanyIdOnUser'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240127221314_AddedCompanyIdOnUser', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240127222233_AddedCompanyIdOUser'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [CompanyId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240127222233_AddedCompanyIdOUser'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240127222233_AddedCompanyIdOUser', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240128121501_AddedCustomer'
)
BEGIN
    CREATE TABLE [datanex_customers] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(max) NOT NULL,
        [BAddress] nvarchar(max) NULL,
        [BRegion] nvarchar(max) NULL,
        [BPostalCode] nvarchar(max) NULL,
        [BCity] nvarchar(max) NULL,
        [BCountry] nvarchar(max) NULL,
        [BPhone1] int NULL,
        [BPhone2] int NULL,
        [BEmail] nvarchar(max) NULL,
        [SAddress] nvarchar(max) NULL,
        [SRegion] nvarchar(max) NULL,
        [SPostalCode] nvarchar(max) NULL,
        [SCity] nvarchar(max) NULL,
        [SCountry] nvarchar(max) NULL,
        [SPhone1] int NULL,
        [SPhone2] int NULL,
        [SEmail] nvarchar(max) NULL,
        CONSTRAINT [PK_datanex_customers] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240128121501_AddedCustomer'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240128121501_AddedCustomer', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    DECLARE @var2 sysname;
    SELECT @var2 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'BAddress');
    IF @var2 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var2 + '];');
    ALTER TABLE [datanex_customers] DROP COLUMN [BAddress];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    DECLARE @var3 sysname;
    SELECT @var3 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'BCity');
    IF @var3 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var3 + '];');
    ALTER TABLE [datanex_customers] DROP COLUMN [BCity];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    DECLARE @var4 sysname;
    SELECT @var4 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'BCountry');
    IF @var4 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var4 + '];');
    ALTER TABLE [datanex_customers] DROP COLUMN [BCountry];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    DECLARE @var5 sysname;
    SELECT @var5 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'BEmail');
    IF @var5 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var5 + '];');
    ALTER TABLE [datanex_customers] DROP COLUMN [BEmail];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    DECLARE @var6 sysname;
    SELECT @var6 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'BPhone1');
    IF @var6 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var6 + '];');
    ALTER TABLE [datanex_customers] DROP COLUMN [BPhone1];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    DECLARE @var7 sysname;
    SELECT @var7 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'BPostalCode');
    IF @var7 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var7 + '];');
    ALTER TABLE [datanex_customers] DROP COLUMN [BPostalCode];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    EXEC sp_rename N'[datanex_customers].[SRegion]', N'TaxOffice', N'COLUMN';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    EXEC sp_rename N'[datanex_customers].[SPostalCode]', N'Region', N'COLUMN';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    EXEC sp_rename N'[datanex_customers].[SPhone2]', N'VatNumber', N'COLUMN';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    EXEC sp_rename N'[datanex_customers].[SPhone1]', N'Phone2', N'COLUMN';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    EXEC sp_rename N'[datanex_customers].[SEmail]', N'PostalCode', N'COLUMN';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    EXEC sp_rename N'[datanex_customers].[SCountry]', N'Email', N'COLUMN';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    EXEC sp_rename N'[datanex_customers].[SCity]', N'Country', N'COLUMN';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    EXEC sp_rename N'[datanex_customers].[SAddress]', N'City', N'COLUMN';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    EXEC sp_rename N'[datanex_customers].[BRegion]', N'Address', N'COLUMN';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    EXEC sp_rename N'[datanex_customers].[BPhone2]', N'Phone1', N'COLUMN';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203111842_ChangesOnCustomerModel'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240203111842_ChangesOnCustomerModel', N'8.0.1');
END;
GO

COMMIT;
GO

