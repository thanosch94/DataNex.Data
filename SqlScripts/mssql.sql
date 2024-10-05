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

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203112737_ChangedPhoneNumberToLong'
)
BEGIN
    DECLARE @var8 sysname;
    SELECT @var8 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'Phone2');
    IF @var8 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var8 + '];');
    ALTER TABLE [datanex_customers] ALTER COLUMN [Phone2] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203112737_ChangedPhoneNumberToLong'
)
BEGIN
    DECLARE @var9 sysname;
    SELECT @var9 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'Phone1');
    IF @var9 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var9 + '];');
    ALTER TABLE [datanex_customers] ALTER COLUMN [Phone1] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203112737_ChangedPhoneNumberToLong'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240203112737_ChangedPhoneNumberToLong', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203153810_AddedDocumemt'
)
BEGIN
    CREATE TABLE [DocumentType] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_DocumentType] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203153810_AddedDocumemt'
)
BEGIN
    CREATE TABLE [datanex_documents] (
        [Id] uniqueidentifier NOT NULL,
        [DocumentTypeId] uniqueidentifier NOT NULL,
        [DocumentNumber] int NOT NULL,
        [CustomerId] uniqueidentifier NOT NULL,
        [DocumentTotal] decimal(18,2) NULL,
        CONSTRAINT [PK_datanex_documents] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_datanex_documents_DocumentType_DocumentTypeId] FOREIGN KEY ([DocumentTypeId]) REFERENCES [DocumentType] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_datanex_documents_datanex_customers_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [datanex_customers] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203153810_AddedDocumemt'
)
BEGIN
    CREATE INDEX [IX_datanex_documents_CustomerId] ON [datanex_documents] ([CustomerId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203153810_AddedDocumemt'
)
BEGIN
    CREATE INDEX [IX_datanex_documents_DocumentTypeId] ON [datanex_documents] ([DocumentTypeId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240203153810_AddedDocumemt'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240203153810_AddedDocumemt', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240205195901_AddedDocumentShippingDetails'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [DocumentDateTime] datetimeoffset NOT NULL DEFAULT '0001-01-01T00:00:00.0000000+00:00';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240205195901_AddedDocumentShippingDetails'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [DocumentStatusId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240205195901_AddedDocumentShippingDetails'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [ShippingAddress] nvarchar(255) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240205195901_AddedDocumentShippingDetails'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [ShippingCity] nvarchar(50) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240205195901_AddedDocumentShippingDetails'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [ShippingCountry] nvarchar(50) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240205195901_AddedDocumentShippingDetails'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [ShippingEmail] nvarchar(255) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240205195901_AddedDocumentShippingDetails'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [ShippingPhone1] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240205195901_AddedDocumentShippingDetails'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [ShippingPhone2] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240205195901_AddedDocumentShippingDetails'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [ShippingPostalCode] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240205195901_AddedDocumentShippingDetails'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [ShippingRegion] nvarchar(50) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240205195901_AddedDocumentShippingDetails'
)
BEGIN
    CREATE TABLE [datanex_statuses] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(50) NOT NULL,
        CONSTRAINT [PK_datanex_statuses] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240205195901_AddedDocumentShippingDetails'
)
BEGIN
    CREATE INDEX [IX_datanex_documents_DocumentStatusId] ON [datanex_documents] ([DocumentStatusId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240205195901_AddedDocumentShippingDetails'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD CONSTRAINT [FK_datanex_documents_datanex_statuses_DocumentStatusId] FOREIGN KEY ([DocumentStatusId]) REFERENCES [datanex_statuses] ([Id]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240205195901_AddedDocumentShippingDetails'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240205195901_AddedDocumentShippingDetails', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206210028_AddedBrandsAndProducts'
)
BEGIN
    ALTER TABLE [datanex_documents] DROP CONSTRAINT [FK_datanex_documents_DocumentType_DocumentTypeId];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206210028_AddedBrandsAndProducts'
)
BEGIN
    ALTER TABLE [DocumentType] DROP CONSTRAINT [PK_DocumentType];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206210028_AddedBrandsAndProducts'
)
BEGIN
    EXEC sp_rename N'[DocumentType]', N'DocumentTypes';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206210028_AddedBrandsAndProducts'
)
BEGIN
    ALTER TABLE [DocumentTypes] ADD CONSTRAINT [PK_DocumentTypes] PRIMARY KEY ([Id]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206210028_AddedBrandsAndProducts'
)
BEGIN
    CREATE TABLE [datanex_brands] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(50) NOT NULL,
        CONSTRAINT [PK_datanex_brands] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206210028_AddedBrandsAndProducts'
)
BEGIN
    CREATE TABLE [datanex_products] (
        [Id] uniqueidentifier NOT NULL,
        [Sku] nvarchar(max) NULL,
        [Name] nvarchar(255) NOT NULL,
        [Description] nvarchar(max) NULL,
        [Image] varbinary(max) NULL,
        [Price] decimal(18,2) NULL,
        [BrandId] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_products] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_datanex_products_datanex_brands_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [datanex_brands] ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206210028_AddedBrandsAndProducts'
)
BEGIN
    CREATE INDEX [IX_datanex_products_BrandId] ON [datanex_products] ([BrandId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206210028_AddedBrandsAndProducts'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD CONSTRAINT [FK_datanex_documents_DocumentTypes_DocumentTypeId] FOREIGN KEY ([DocumentTypeId]) REFERENCES [DocumentTypes] ([Id]) ON DELETE CASCADE;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206210028_AddedBrandsAndProducts'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240206210028_AddedBrandsAndProducts', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206220455_AddedDocumentProductsAndProductSizes'
)
BEGIN
    ALTER TABLE [datanex_documents] DROP CONSTRAINT [FK_datanex_documents_DocumentTypes_DocumentTypeId];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206220455_AddedDocumentProductsAndProductSizes'
)
BEGIN
    ALTER TABLE [DocumentTypes] DROP CONSTRAINT [PK_DocumentTypes];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206220455_AddedDocumentProductsAndProductSizes'
)
BEGIN
    EXEC sp_rename N'[DocumentTypes]', N'datanex_documenttypes';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206220455_AddedDocumentProductsAndProductSizes'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD CONSTRAINT [PK_datanex_documenttypes] PRIMARY KEY ([Id]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206220455_AddedDocumentProductsAndProductSizes'
)
BEGIN
    CREATE TABLE [datanex_product_sizes] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(50) NOT NULL,
        [Abbreviation] nvarchar(10) NULL,
        CONSTRAINT [PK_datanex_product_sizes] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206220455_AddedDocumentProductsAndProductSizes'
)
BEGIN
    CREATE TABLE [datanex_documentproducts] (
        [Id] uniqueidentifier NOT NULL,
        [DocumentId] uniqueidentifier NOT NULL,
        [ProductId] uniqueidentifier NOT NULL,
        [ProductQuantity] int NOT NULL,
        [ProductSizeId] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_documentproducts] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_datanex_documentproducts_datanex_documents_DocumentId] FOREIGN KEY ([DocumentId]) REFERENCES [datanex_documents] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_datanex_documentproducts_datanex_product_sizes_ProductSizeId] FOREIGN KEY ([ProductSizeId]) REFERENCES [datanex_product_sizes] ([Id]),
        CONSTRAINT [FK_datanex_documentproducts_datanex_products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [datanex_products] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206220455_AddedDocumentProductsAndProductSizes'
)
BEGIN
    CREATE INDEX [IX_datanex_documentproducts_DocumentId] ON [datanex_documentproducts] ([DocumentId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206220455_AddedDocumentProductsAndProductSizes'
)
BEGIN
    CREATE INDEX [IX_datanex_documentproducts_ProductId] ON [datanex_documentproducts] ([ProductId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206220455_AddedDocumentProductsAndProductSizes'
)
BEGIN
    CREATE INDEX [IX_datanex_documentproducts_ProductSizeId] ON [datanex_documentproducts] ([ProductSizeId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206220455_AddedDocumentProductsAndProductSizes'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD CONSTRAINT [FK_datanex_documents_datanex_documenttypes_DocumentTypeId] FOREIGN KEY ([DocumentTypeId]) REFERENCES [datanex_documenttypes] ([Id]) ON DELETE CASCADE;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240206220455_AddedDocumentProductsAndProductSizes'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240206220455_AddedDocumentProductsAndProductSizes', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240208204036_AddedDescriptiononDocumentTypes'
)
BEGIN
    DECLARE @var10 sysname;
    SELECT @var10 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_documenttypes]') AND [c].[name] = N'Name');
    IF @var10 IS NOT NULL EXEC(N'ALTER TABLE [datanex_documenttypes] DROP CONSTRAINT [' + @var10 + '];');
    ALTER TABLE [datanex_documenttypes] ALTER COLUMN [Name] nvarchar(50) NOT NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240208204036_AddedDescriptiononDocumentTypes'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [Description] nvarchar(50) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240208204036_AddedDescriptiononDocumentTypes'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240208204036_AddedDescriptiononDocumentTypes', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240214214903_AddedProductBarcode'
)
BEGIN
    CREATE TABLE [datanex_product_barcodes] (
        [Id] uniqueidentifier NOT NULL,
        [ProductId] uniqueidentifier NOT NULL,
        [SizeId] uniqueidentifier NULL,
        [Barcode] bigint NULL,
        CONSTRAINT [PK_datanex_product_barcodes] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_datanex_product_barcodes_datanex_product_sizes_SizeId] FOREIGN KEY ([SizeId]) REFERENCES [datanex_product_sizes] ([Id]),
        CONSTRAINT [FK_datanex_product_barcodes_datanex_products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [datanex_products] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240214214903_AddedProductBarcode'
)
BEGIN
    CREATE INDEX [IX_datanex_product_barcodes_ProductId] ON [datanex_product_barcodes] ([ProductId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240214214903_AddedProductBarcode'
)
BEGIN
    CREATE INDEX [IX_datanex_product_barcodes_SizeId] ON [datanex_product_barcodes] ([SizeId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240214214903_AddedProductBarcode'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240214214903_AddedProductBarcode', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240218115632_ChangedBarcodeToString'
)
BEGIN
    DECLARE @var11 sysname;
    SELECT @var11 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_product_barcodes]') AND [c].[name] = N'Barcode');
    IF @var11 IS NOT NULL EXEC(N'ALTER TABLE [datanex_product_barcodes] DROP CONSTRAINT [' + @var11 + '];');
    ALTER TABLE [datanex_product_barcodes] ALTER COLUMN [Barcode] nvarchar(255) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240218115632_ChangedBarcodeToString'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240218115632_ChangedBarcodeToString', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240324151132_AddedUserInputs'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [UserDate1] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240324151132_AddedUserInputs'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [UserDate2] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240324151132_AddedUserInputs'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [UserDate3] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240324151132_AddedUserInputs'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [UserDate4] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240324151132_AddedUserInputs'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [UserNumber1] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240324151132_AddedUserInputs'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [UserNumber2] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240324151132_AddedUserInputs'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [UserNumber3] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240324151132_AddedUserInputs'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [UserNumber4] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240324151132_AddedUserInputs'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [UserText1] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240324151132_AddedUserInputs'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [UserText2] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240324151132_AddedUserInputs'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [UserText3] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240324151132_AddedUserInputs'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [UserText4] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240324151132_AddedUserInputs'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240324151132_AddedUserInputs', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240327205121_ChangedImageToImagePath'
)
BEGIN
    DECLARE @var12 sysname;
    SELECT @var12 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_products]') AND [c].[name] = N'Image');
    IF @var12 IS NOT NULL EXEC(N'ALTER TABLE [datanex_products] DROP CONSTRAINT [' + @var12 + '];');
    ALTER TABLE [datanex_products] DROP COLUMN [Image];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240327205121_ChangedImageToImagePath'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [ImagePath] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240327205121_ChangedImageToImagePath'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240327205121_ChangedImageToImagePath', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] DROP CONSTRAINT [FK_datanex_documentproducts_datanex_documents_DocumentId];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] DROP CONSTRAINT [FK_datanex_documentproducts_datanex_product_sizes_ProductSizeId];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] DROP CONSTRAINT [FK_datanex_documentproducts_datanex_products_ProductId];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_documents] DROP CONSTRAINT [FK_datanex_documents_datanex_customers_CustomerId];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_documents] DROP CONSTRAINT [FK_datanex_documents_datanex_documenttypes_DocumentTypeId];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_documents] DROP CONSTRAINT [FK_datanex_documents_datanex_statuses_DocumentStatusId];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_product_barcodes] DROP CONSTRAINT [FK_datanex_product_barcodes_datanex_product_sizes_SizeId];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_product_barcodes] DROP CONSTRAINT [FK_datanex_product_barcodes_datanex_products_ProductId];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_products] DROP CONSTRAINT [FK_datanex_products_datanex_brands_BrandId];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD CONSTRAINT [FK_datanex_documentproducts_datanex_documents_DocumentId] FOREIGN KEY ([DocumentId]) REFERENCES [datanex_documents] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD CONSTRAINT [FK_datanex_documentproducts_datanex_product_sizes_ProductSizeId] FOREIGN KEY ([ProductSizeId]) REFERENCES [datanex_product_sizes] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD CONSTRAINT [FK_datanex_documentproducts_datanex_products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [datanex_products] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD CONSTRAINT [FK_datanex_documents_datanex_customers_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [datanex_customers] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD CONSTRAINT [FK_datanex_documents_datanex_documenttypes_DocumentTypeId] FOREIGN KEY ([DocumentTypeId]) REFERENCES [datanex_documenttypes] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD CONSTRAINT [FK_datanex_documents_datanex_statuses_DocumentStatusId] FOREIGN KEY ([DocumentStatusId]) REFERENCES [datanex_statuses] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_product_barcodes] ADD CONSTRAINT [FK_datanex_product_barcodes_datanex_product_sizes_SizeId] FOREIGN KEY ([SizeId]) REFERENCES [datanex_product_sizes] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_product_barcodes] ADD CONSTRAINT [FK_datanex_product_barcodes_datanex_products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [datanex_products] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    ALTER TABLE [datanex_products] ADD CONSTRAINT [FK_datanex_products_datanex_brands_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [datanex_brands] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240411201431_DisableCascadeDelete'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240411201431_DisableCascadeDelete', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240413221223_AddedPricePropertiesOnDocumentProduct'
)
BEGIN
    EXEC sp_rename N'[datanex_documentproducts].[ProductQuantity]', N'Quantity', N'COLUMN';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240413221223_AddedPricePropertiesOnDocumentProduct'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD [Price] decimal(18,2) NOT NULL DEFAULT 0.0;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240413221223_AddedPricePropertiesOnDocumentProduct'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD [TotalPrice] decimal(18,2) NOT NULL DEFAULT 0.0;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240413221223_AddedPricePropertiesOnDocumentProduct'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240413221223_AddedPricePropertiesOnDocumentProduct', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [DateAdded] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [DateUpdated] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [IsActive] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [IsDeleted] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [PasswordHash] nvarchar(max) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [UserAdded] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [UserRole] int NOT NULL DEFAULT 0;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [UserUpdated] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [Username] nvarchar(max) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD [DateAdded] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD [DateUpdated] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD [IsActive] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD [IsDeleted] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD [UserAdded] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD [UserUpdated] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [DateAdded] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [DateUpdated] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [IsActive] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [IsDeleted] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [UserAdded] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [UserUpdated] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_product_sizes] ADD [DateAdded] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_product_sizes] ADD [DateUpdated] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_product_sizes] ADD [IsActive] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_product_sizes] ADD [IsDeleted] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_product_sizes] ADD [UserAdded] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_product_sizes] ADD [UserUpdated] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_product_barcodes] ADD [DateAdded] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_product_barcodes] ADD [DateUpdated] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_product_barcodes] ADD [IsActive] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_product_barcodes] ADD [IsDeleted] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_product_barcodes] ADD [UserAdded] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_product_barcodes] ADD [UserUpdated] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [DateAdded] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [DateUpdated] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [IsActive] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [IsDeleted] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [UserAdded] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [UserUpdated] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [DateAdded] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [DateUpdated] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [IsActive] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [IsDeleted] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [UserAdded] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [UserUpdated] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD [DateAdded] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD [DateUpdated] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD [IsActive] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD [IsDeleted] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD [UserAdded] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD [UserUpdated] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [DateAdded] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [DateUpdated] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [IsActive] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [IsDeleted] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [UserAdded] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [UserUpdated] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_brands] ADD [DateAdded] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_brands] ADD [DateUpdated] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_brands] ADD [IsActive] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_brands] ADD [IsDeleted] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_brands] ADD [UserAdded] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    ALTER TABLE [datanex_brands] ADD [UserUpdated] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240504155508_AddedUserPropertiesAndBaseModel'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240504155508_AddedUserPropertiesAndBaseModel', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517181405_ApplyModelChanges'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240517181405_ApplyModelChanges', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    EXEC sp_rename N'[datanex_users].[Username]', N'UserName', N'COLUMN';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    DECLARE @var13 sysname;
    SELECT @var13 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_users]') AND [c].[name] = N'UserName');
    IF @var13 IS NOT NULL EXEC(N'ALTER TABLE [datanex_users] DROP CONSTRAINT [' + @var13 + '];');
    ALTER TABLE [datanex_users] ALTER COLUMN [UserName] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    DECLARE @var14 sysname;
    SELECT @var14 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_users]') AND [c].[name] = N'PasswordHash');
    IF @var14 IS NOT NULL EXEC(N'ALTER TABLE [datanex_users] DROP CONSTRAINT [' + @var14 + '];');
    ALTER TABLE [datanex_users] ALTER COLUMN [PasswordHash] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    ALTER TABLE [datanex_users] DROP CONSTRAINT [PK_datanex_users];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    DECLARE @var15 sysname;
    SELECT @var15 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_users]') AND [c].[name] = N'Id');
    IF @var15 IS NOT NULL EXEC(N'ALTER TABLE [datanex_users] DROP CONSTRAINT [' + @var15 + '];');
    ALTER TABLE [datanex_users] ALTER COLUMN [Id] nvarchar(450) NOT NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD CONSTRAINT [PK_datanex_users] PRIMARY KEY ([Id]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [AccessFailedCount] int NOT NULL DEFAULT 0;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [ConcurrencyStamp] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [EmailConfirmed] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [LockoutEnabled] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [LockoutEnd] datetimeoffset NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [NormalizedEmail] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [NormalizedUserName] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [PhoneNumber] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [PhoneNumberConfirmed] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [SecurityStamp] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    ALTER TABLE [datanex_users] ADD [TwoFactorEnabled] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517190259_AddedIdentityUserOnAppUserModel'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240517190259_AddedIdentityUserOnAppUserModel', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    ALTER TABLE [datanex_users] DROP CONSTRAINT [PK_datanex_users];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    EXEC sp_rename N'[datanex_users]', N'AspNetUsers';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    DECLARE @var16 sysname;
    SELECT @var16 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[AspNetUsers]') AND [c].[name] = N'UserName');
    IF @var16 IS NOT NULL EXEC(N'ALTER TABLE [AspNetUsers] DROP CONSTRAINT [' + @var16 + '];');
    ALTER TABLE [AspNetUsers] ALTER COLUMN [UserName] nvarchar(256) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    DECLARE @var17 sysname;
    SELECT @var17 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[AspNetUsers]') AND [c].[name] = N'NormalizedUserName');
    IF @var17 IS NOT NULL EXEC(N'ALTER TABLE [AspNetUsers] DROP CONSTRAINT [' + @var17 + '];');
    ALTER TABLE [AspNetUsers] ALTER COLUMN [NormalizedUserName] nvarchar(256) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    DECLARE @var18 sysname;
    SELECT @var18 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[AspNetUsers]') AND [c].[name] = N'NormalizedEmail');
    IF @var18 IS NOT NULL EXEC(N'ALTER TABLE [AspNetUsers] DROP CONSTRAINT [' + @var18 + '];');
    ALTER TABLE [AspNetUsers] ALTER COLUMN [NormalizedEmail] nvarchar(256) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    DECLARE @var19 sysname;
    SELECT @var19 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[AspNetUsers]') AND [c].[name] = N'Email');
    IF @var19 IS NOT NULL EXEC(N'ALTER TABLE [AspNetUsers] DROP CONSTRAINT [' + @var19 + '];');
    ALTER TABLE [AspNetUsers] ALTER COLUMN [Email] nvarchar(256) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    DECLARE @var20 sysname;
    SELECT @var20 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[AspNetUsers]') AND [c].[name] = N'Id');
    IF @var20 IS NOT NULL EXEC(N'ALTER TABLE [AspNetUsers] DROP CONSTRAINT [' + @var20 + '];');
    ALTER TABLE [AspNetUsers] ALTER COLUMN [Id] uniqueidentifier NOT NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD CONSTRAINT [PK_AspNetUsers] PRIMARY KEY ([Id]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    CREATE TABLE [AspNetRoles] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(256) NULL,
        [NormalizedName] nvarchar(256) NULL,
        [ConcurrencyStamp] nvarchar(max) NULL,
        CONSTRAINT [PK_AspNetRoles] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    CREATE TABLE [AspNetUserClaims] (
        [Id] int NOT NULL IDENTITY,
        [UserId] uniqueidentifier NOT NULL,
        [ClaimType] nvarchar(max) NULL,
        [ClaimValue] nvarchar(max) NULL,
        CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    CREATE TABLE [AspNetUserLogins] (
        [LoginProvider] nvarchar(450) NOT NULL,
        [ProviderKey] nvarchar(450) NOT NULL,
        [ProviderDisplayName] nvarchar(max) NULL,
        [UserId] uniqueidentifier NOT NULL,
        CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY ([LoginProvider], [ProviderKey]),
        CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    CREATE TABLE [AspNetUserTokens] (
        [UserId] uniqueidentifier NOT NULL,
        [LoginProvider] nvarchar(450) NOT NULL,
        [Name] nvarchar(450) NOT NULL,
        [Value] nvarchar(max) NULL,
        CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY ([UserId], [LoginProvider], [Name]),
        CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    CREATE TABLE [AspNetRoleClaims] (
        [Id] int NOT NULL IDENTITY,
        [RoleId] uniqueidentifier NOT NULL,
        [ClaimType] nvarchar(max) NULL,
        [ClaimValue] nvarchar(max) NULL,
        CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [AspNetRoles] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    CREATE TABLE [AspNetUserRoles] (
        [UserId] uniqueidentifier NOT NULL,
        [RoleId] uniqueidentifier NOT NULL,
        CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY ([UserId], [RoleId]),
        CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [AspNetRoles] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    CREATE INDEX [EmailIndex] ON [AspNetUsers] ([NormalizedEmail]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    EXEC(N'CREATE UNIQUE INDEX [UserNameIndex] ON [AspNetUsers] ([NormalizedUserName]) WHERE [NormalizedUserName] IS NOT NULL');
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    CREATE INDEX [IX_AspNetRoleClaims_RoleId] ON [AspNetRoleClaims] ([RoleId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    EXEC(N'CREATE UNIQUE INDEX [RoleNameIndex] ON [AspNetRoles] ([NormalizedName]) WHERE [NormalizedName] IS NOT NULL');
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    CREATE INDEX [IX_AspNetUserClaims_UserId] ON [AspNetUserClaims] ([UserId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    CREATE INDEX [IX_AspNetUserLogins_UserId] ON [AspNetUserLogins] ([UserId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    CREATE INDEX [IX_AspNetUserRoles_RoleId] ON [AspNetUserRoles] ([RoleId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240517214000_AddedIdentityDbContext'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240517214000_AddedIdentityDbContext', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240526135453_AddedLogs'
)
BEGIN
    CREATE TABLE [datanex_logs] (
        [Id] uniqueidentifier NOT NULL,
        [LogName] nvarchar(max) NOT NULL,
        [LogType] int NOT NULL,
        [LogOrigin] int NOT NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NOT NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_logs] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240526135453_AddedLogs'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240526135453_AddedLogs', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240526153612_MakeUserAddedNullable'
)
BEGIN
    DECLARE @var21 sysname;
    SELECT @var21 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_statuses]') AND [c].[name] = N'UserAdded');
    IF @var21 IS NOT NULL EXEC(N'ALTER TABLE [datanex_statuses] DROP CONSTRAINT [' + @var21 + '];');
    ALTER TABLE [datanex_statuses] ALTER COLUMN [UserAdded] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240526153612_MakeUserAddedNullable'
)
BEGIN
    DECLARE @var22 sysname;
    SELECT @var22 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_products]') AND [c].[name] = N'UserAdded');
    IF @var22 IS NOT NULL EXEC(N'ALTER TABLE [datanex_products] DROP CONSTRAINT [' + @var22 + '];');
    ALTER TABLE [datanex_products] ALTER COLUMN [UserAdded] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240526153612_MakeUserAddedNullable'
)
BEGIN
    DECLARE @var23 sysname;
    SELECT @var23 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_product_sizes]') AND [c].[name] = N'UserAdded');
    IF @var23 IS NOT NULL EXEC(N'ALTER TABLE [datanex_product_sizes] DROP CONSTRAINT [' + @var23 + '];');
    ALTER TABLE [datanex_product_sizes] ALTER COLUMN [UserAdded] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240526153612_MakeUserAddedNullable'
)
BEGIN
    DECLARE @var24 sysname;
    SELECT @var24 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_product_barcodes]') AND [c].[name] = N'UserAdded');
    IF @var24 IS NOT NULL EXEC(N'ALTER TABLE [datanex_product_barcodes] DROP CONSTRAINT [' + @var24 + '];');
    ALTER TABLE [datanex_product_barcodes] ALTER COLUMN [UserAdded] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240526153612_MakeUserAddedNullable'
)
BEGIN
    DECLARE @var25 sysname;
    SELECT @var25 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_logs]') AND [c].[name] = N'UserAdded');
    IF @var25 IS NOT NULL EXEC(N'ALTER TABLE [datanex_logs] DROP CONSTRAINT [' + @var25 + '];');
    ALTER TABLE [datanex_logs] ALTER COLUMN [UserAdded] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240526153612_MakeUserAddedNullable'
)
BEGIN
    DECLARE @var26 sysname;
    SELECT @var26 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_documenttypes]') AND [c].[name] = N'UserAdded');
    IF @var26 IS NOT NULL EXEC(N'ALTER TABLE [datanex_documenttypes] DROP CONSTRAINT [' + @var26 + '];');
    ALTER TABLE [datanex_documenttypes] ALTER COLUMN [UserAdded] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240526153612_MakeUserAddedNullable'
)
BEGIN
    DECLARE @var27 sysname;
    SELECT @var27 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_documents]') AND [c].[name] = N'UserAdded');
    IF @var27 IS NOT NULL EXEC(N'ALTER TABLE [datanex_documents] DROP CONSTRAINT [' + @var27 + '];');
    ALTER TABLE [datanex_documents] ALTER COLUMN [UserAdded] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240526153612_MakeUserAddedNullable'
)
BEGIN
    DECLARE @var28 sysname;
    SELECT @var28 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_documentproducts]') AND [c].[name] = N'UserAdded');
    IF @var28 IS NOT NULL EXEC(N'ALTER TABLE [datanex_documentproducts] DROP CONSTRAINT [' + @var28 + '];');
    ALTER TABLE [datanex_documentproducts] ALTER COLUMN [UserAdded] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240526153612_MakeUserAddedNullable'
)
BEGIN
    DECLARE @var29 sysname;
    SELECT @var29 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'UserAdded');
    IF @var29 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var29 + '];');
    ALTER TABLE [datanex_customers] ALTER COLUMN [UserAdded] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240526153612_MakeUserAddedNullable'
)
BEGIN
    DECLARE @var30 sysname;
    SELECT @var30 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_brands]') AND [c].[name] = N'UserAdded');
    IF @var30 IS NOT NULL EXEC(N'ALTER TABLE [datanex_brands] DROP CONSTRAINT [' + @var30 + '];');
    ALTER TABLE [datanex_brands] ALTER COLUMN [UserAdded] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240526153612_MakeUserAddedNullable'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240526153612_MakeUserAddedNullable', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240615085249_AddedConnectorParametersAndWooConnectionData'
)
BEGIN
    CREATE TABLE [connector_parameters] (
        [Id] uniqueidentifier NOT NULL,
        [CompanyId] uniqueidentifier NULL,
        [WooBaseUrl] nvarchar(max) NULL,
        [WooConsumerKey] nvarchar(max) NULL,
        [WooConsumerSecret] nvarchar(max) NULL,
        CONSTRAINT [PK_connector_parameters] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240615085249_AddedConnectorParametersAndWooConnectionData'
)
BEGIN
    CREATE TABLE [connector_wooconnectionsdata] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(50) NOT NULL,
        [RequestType] int NOT NULL,
        [Endpoint] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_connector_wooconnectionsdata] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240615085249_AddedConnectorParametersAndWooConnectionData'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240615085249_AddedConnectorParametersAndWooConnectionData', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240618191036_AddedBaseModelOnConnectorModels'
)
BEGIN
    ALTER TABLE [connector_wooconnectionsdata] ADD [DateAdded] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240618191036_AddedBaseModelOnConnectorModels'
)
BEGIN
    ALTER TABLE [connector_wooconnectionsdata] ADD [DateUpdated] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240618191036_AddedBaseModelOnConnectorModels'
)
BEGIN
    ALTER TABLE [connector_wooconnectionsdata] ADD [IsActive] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240618191036_AddedBaseModelOnConnectorModels'
)
BEGIN
    ALTER TABLE [connector_wooconnectionsdata] ADD [IsDeleted] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240618191036_AddedBaseModelOnConnectorModels'
)
BEGIN
    ALTER TABLE [connector_wooconnectionsdata] ADD [UserAdded] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240618191036_AddedBaseModelOnConnectorModels'
)
BEGIN
    ALTER TABLE [connector_wooconnectionsdata] ADD [UserUpdated] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240618191036_AddedBaseModelOnConnectorModels'
)
BEGIN
    ALTER TABLE [connector_parameters] ADD [DateAdded] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240618191036_AddedBaseModelOnConnectorModels'
)
BEGIN
    ALTER TABLE [connector_parameters] ADD [DateUpdated] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240618191036_AddedBaseModelOnConnectorModels'
)
BEGIN
    ALTER TABLE [connector_parameters] ADD [IsActive] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240618191036_AddedBaseModelOnConnectorModels'
)
BEGIN
    ALTER TABLE [connector_parameters] ADD [IsDeleted] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240618191036_AddedBaseModelOnConnectorModels'
)
BEGIN
    ALTER TABLE [connector_parameters] ADD [UserAdded] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240618191036_AddedBaseModelOnConnectorModels'
)
BEGIN
    ALTER TABLE [connector_parameters] ADD [UserUpdated] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240618191036_AddedBaseModelOnConnectorModels'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240618191036_AddedBaseModelOnConnectorModels', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240622150027_AddedAdditionalCharges'
)
BEGIN
    CREATE TABLE [datanex_additional_charges] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(100) NOT NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_additional_charges] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240622150027_AddedAdditionalCharges'
)
BEGIN
    CREATE TABLE [datanex_document_additional_charges] (
        [Id] uniqueidentifier NOT NULL,
        [DocumentId] uniqueidentifier NOT NULL,
        [AdditionalChargeId] uniqueidentifier NOT NULL,
        [AdditionalChargeAmount] decimal(18,2) NOT NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_document_additional_charges] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_datanex_document_additional_charges_datanex_additional_charges_AdditionalChargeId] FOREIGN KEY ([AdditionalChargeId]) REFERENCES [datanex_additional_charges] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_datanex_document_additional_charges_datanex_documents_DocumentId] FOREIGN KEY ([DocumentId]) REFERENCES [datanex_documents] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240622150027_AddedAdditionalCharges'
)
BEGIN
    CREATE INDEX [IX_datanex_document_additional_charges_AdditionalChargeId] ON [datanex_document_additional_charges] ([AdditionalChargeId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240622150027_AddedAdditionalCharges'
)
BEGIN
    CREATE INDEX [IX_datanex_document_additional_charges_DocumentId] ON [datanex_document_additional_charges] ([DocumentId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240622150027_AddedAdditionalCharges'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240622150027_AddedAdditionalCharges', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240624142133_AddedConnectorJob'
)
BEGIN
    CREATE TABLE [connector_jobs] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(100) NOT NULL,
        [Description] nvarchar(250) NULL,
        [JobType] int NOT NULL,
        [DataSourceId] uniqueidentifier NOT NULL,
        [WooConnectionDataSourceId] uniqueidentifier NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_connector_jobs] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_connector_jobs_connector_wooconnectionsdata_WooConnectionDataSourceId] FOREIGN KEY ([WooConnectionDataSourceId]) REFERENCES [connector_wooconnectionsdata] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240624142133_AddedConnectorJob'
)
BEGIN
    CREATE INDEX [IX_connector_jobs_WooConnectionDataSourceId] ON [connector_jobs] ([WooConnectionDataSourceId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240624142133_AddedConnectorJob'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240624142133_AddedConnectorJob', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240624170942_AddedIconOnConnectorJob'
)
BEGIN
    ALTER TABLE [connector_jobs] ADD [Icon] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240624170942_AddedIconOnConnectorJob'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240624170942_AddedIconOnConnectorJob', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240629132242_AddedWooEntityOnWooConnectionsData'
)
BEGIN
    ALTER TABLE [connector_wooconnectionsdata] ADD [WooEntity] int NOT NULL DEFAULT 0;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240629132242_AddedWooEntityOnWooConnectionsData'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240629132242_AddedWooEntityOnWooConnectionsData', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240702201505_AddedWarehouses'
)
BEGIN
    CREATE TABLE [datanex_warehouses] (
        [Id] uniqueidentifier NOT NULL,
        [Code] nvarchar(10) NOT NULL,
        [Name] nvarchar(50) NOT NULL,
        [IsDefault] bit NOT NULL,
        [CompanyId] uniqueidentifier NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_warehouses] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240702201505_AddedWarehouses'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240702201505_AddedWarehouses', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703181028_AddedDocumentTypeGroupAndAbbreviation'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [Abbreviation] nvarchar(10) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703181028_AddedDocumentTypeGroupAndAbbreviation'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [DocumentTypeGroup] int NOT NULL DEFAULT 0;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703181028_AddedDocumentTypeGroupAndAbbreviation'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240703181028_AddedDocumentTypeGroupAndAbbreviation', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [datanex_warehouses] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [datanex_product_sizes] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [datanex_product_barcodes] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [datanex_logs] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [datanex_document_additional_charges] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [datanex_brands] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [datanex_additional_charges] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [connector_wooconnectionsdata] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [connector_parameters] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    ALTER TABLE [connector_jobs] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240703183159_AddedIsSeeded'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240703183159_AddedIsSeeded', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240706204518_AddedDocumentCode'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [DocumentCode] nvarchar(20) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240706204518_AddedDocumentCode'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240706204518_AddedDocumentCode', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240707121628_AddedSuppliers'
)
BEGIN
    CREATE TABLE [datanex_suppliers] (
        [Id] uniqueidentifier NOT NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        [Name] nvarchar(max) NOT NULL,
        [Address] nvarchar(max) NULL,
        [Region] nvarchar(max) NULL,
        [PostalCode] nvarchar(max) NULL,
        [City] nvarchar(max) NULL,
        [Country] nvarchar(max) NULL,
        [Phone1] bigint NULL,
        [Phone2] bigint NULL,
        [Email] nvarchar(max) NULL,
        [VatNumber] int NULL,
        [TaxOffice] nvarchar(max) NULL,
        CONSTRAINT [PK_datanex_suppliers] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240707121628_AddedSuppliers'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240707121628_AddedSuppliers', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240707170505_AddedVatClasses'
)
BEGIN
    CREATE TABLE [datanex_vat_classes] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(100) NOT NULL,
        [Description] nvarchar(255) NULL,
        [Abbreviation] nvarchar(10) NULL,
        [Rate] smallint NOT NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_vat_classes] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240707170505_AddedVatClasses'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240707170505_AddedVatClasses', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240707175528_AddedVatClassOnProducts'
)
BEGIN
    EXEC sp_rename N'[datanex_products].[Price]', N'WholesalePrice', N'COLUMN';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240707175528_AddedVatClassOnProducts'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [RetailPrice] decimal(18,2) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240707175528_AddedVatClassOnProducts'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [VatClassId] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240707175528_AddedVatClassOnProducts'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD [TotalVatAmount] decimal(18,2) NOT NULL DEFAULT 0.0;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240707175528_AddedVatClassOnProducts'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD [VatAmount] decimal(18,2) NOT NULL DEFAULT 0.0;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240707175528_AddedVatClassOnProducts'
)
BEGIN
    CREATE INDEX [IX_datanex_products_VatClassId] ON [datanex_products] ([VatClassId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240707175528_AddedVatClassOnProducts'
)
BEGIN
    ALTER TABLE [datanex_products] ADD CONSTRAINT [FK_datanex_products_datanex_vat_classes_VatClassId] FOREIGN KEY ([VatClassId]) REFERENCES [datanex_vat_classes] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240707175528_AddedVatClassOnProducts'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240707175528_AddedVatClassOnProducts', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240714181259_AddedSupplierIdOnDocument'
)
BEGIN
    DECLARE @var31 sysname;
    SELECT @var31 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_documents]') AND [c].[name] = N'CustomerId');
    IF @var31 IS NOT NULL EXEC(N'ALTER TABLE [datanex_documents] DROP CONSTRAINT [' + @var31 + '];');
    ALTER TABLE [datanex_documents] ALTER COLUMN [CustomerId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240714181259_AddedSupplierIdOnDocument'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [SupplierId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240714181259_AddedSupplierIdOnDocument'
)
BEGIN
    CREATE INDEX [IX_datanex_documents_SupplierId] ON [datanex_documents] ([SupplierId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240714181259_AddedSupplierIdOnDocument'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD CONSTRAINT [FK_datanex_documents_datanex_suppliers_SupplierId] FOREIGN KEY ([SupplierId]) REFERENCES [datanex_suppliers] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240714181259_AddedSupplierIdOnDocument'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240714181259_AddedSupplierIdOnDocument', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240926193858_AddedCompanies'
)
BEGIN
    CREATE TABLE [datanex_companies] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(max) NOT NULL,
        [IsDefault] bit NOT NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_companies] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240926193858_AddedCompanies'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240926193858_AddedCompanies', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241005130711_AddedIsWareHouseAndPersonBalanceAffected'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [IsPersonBalanceAffected] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241005130711_AddedIsWareHouseAndPersonBalanceAffected'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [IsWareHouseAffected] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241005130711_AddedIsWareHouseAndPersonBalanceAffected'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241005130711_AddedIsWareHouseAndPersonBalanceAffected', N'8.0.1');
END;
GO

COMMIT;
GO

