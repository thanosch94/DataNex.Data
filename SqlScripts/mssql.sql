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

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241005165414_ChangedIsWareHouseAndPersonBalanceAffectedToEnums'
)
BEGIN
    DECLARE @var32 sysname;
    SELECT @var32 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_documenttypes]') AND [c].[name] = N'IsPersonBalanceAffected');
    IF @var32 IS NOT NULL EXEC(N'ALTER TABLE [datanex_documenttypes] DROP CONSTRAINT [' + @var32 + '];');
    ALTER TABLE [datanex_documenttypes] DROP COLUMN [IsPersonBalanceAffected];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241005165414_ChangedIsWareHouseAndPersonBalanceAffectedToEnums'
)
BEGIN
    DECLARE @var33 sysname;
    SELECT @var33 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_documenttypes]') AND [c].[name] = N'IsWareHouseAffected');
    IF @var33 IS NOT NULL EXEC(N'ALTER TABLE [datanex_documenttypes] DROP CONSTRAINT [' + @var33 + '];');
    ALTER TABLE [datanex_documenttypes] DROP COLUMN [IsWareHouseAffected];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241005165414_ChangedIsWareHouseAndPersonBalanceAffectedToEnums'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [PersonBalanceAffectBehavior] int NOT NULL DEFAULT 0;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241005165414_ChangedIsWareHouseAndPersonBalanceAffectedToEnums'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [WareHouseAffectBehavior] int NOT NULL DEFAULT 0;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241005165414_ChangedIsWareHouseAndPersonBalanceAffectedToEnums'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241005165414_ChangedIsWareHouseAndPersonBalanceAffectedToEnums', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    DECLARE @var34 sysname;
    SELECT @var34 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_warehouses]') AND [c].[name] = N'Code');
    IF @var34 IS NOT NULL EXEC(N'ALTER TABLE [datanex_warehouses] DROP CONSTRAINT [' + @var34 + '];');
    ALTER TABLE [datanex_warehouses] ALTER COLUMN [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_warehouses] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_vat_classes] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_vat_classes] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_product_sizes] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_product_sizes] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_product_barcodes] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_product_barcodes] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_logs] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_logs] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_documentproducts] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_document_additional_charges] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_document_additional_charges] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_companies] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_companies] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_brands] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_brands] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_additional_charges] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [datanex_additional_charges] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [connector_wooconnectionsdata] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [connector_wooconnectionsdata] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [connector_parameters] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [connector_parameters] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [connector_jobs] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [connector_jobs] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241009201632_AddedSerialNumberAndCodeToAllEntities'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241009201632_AddedSerialNumberAndCodeToAllEntities', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241015185200_ChangedIntToStrings'
)
BEGIN
    DECLARE @var35 sysname;
    SELECT @var35 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_suppliers]') AND [c].[name] = N'Phone2');
    IF @var35 IS NOT NULL EXEC(N'ALTER TABLE [datanex_suppliers] DROP CONSTRAINT [' + @var35 + '];');
    ALTER TABLE [datanex_suppliers] ALTER COLUMN [Phone2] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241015185200_ChangedIntToStrings'
)
BEGIN
    DECLARE @var36 sysname;
    SELECT @var36 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_suppliers]') AND [c].[name] = N'Phone1');
    IF @var36 IS NOT NULL EXEC(N'ALTER TABLE [datanex_suppliers] DROP CONSTRAINT [' + @var36 + '];');
    ALTER TABLE [datanex_suppliers] ALTER COLUMN [Phone1] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241015185200_ChangedIntToStrings'
)
BEGIN
    DECLARE @var37 sysname;
    SELECT @var37 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_documents]') AND [c].[name] = N'ShippingPostalCode');
    IF @var37 IS NOT NULL EXEC(N'ALTER TABLE [datanex_documents] DROP CONSTRAINT [' + @var37 + '];');
    ALTER TABLE [datanex_documents] ALTER COLUMN [ShippingPostalCode] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241015185200_ChangedIntToStrings'
)
BEGIN
    DECLARE @var38 sysname;
    SELECT @var38 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_documents]') AND [c].[name] = N'ShippingPhone2');
    IF @var38 IS NOT NULL EXEC(N'ALTER TABLE [datanex_documents] DROP CONSTRAINT [' + @var38 + '];');
    ALTER TABLE [datanex_documents] ALTER COLUMN [ShippingPhone2] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241015185200_ChangedIntToStrings'
)
BEGIN
    DECLARE @var39 sysname;
    SELECT @var39 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_documents]') AND [c].[name] = N'ShippingPhone1');
    IF @var39 IS NOT NULL EXEC(N'ALTER TABLE [datanex_documents] DROP CONSTRAINT [' + @var39 + '];');
    ALTER TABLE [datanex_documents] ALTER COLUMN [ShippingPhone1] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241015185200_ChangedIntToStrings'
)
BEGIN
    DECLARE @var40 sysname;
    SELECT @var40 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'Phone2');
    IF @var40 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var40 + '];');
    ALTER TABLE [datanex_customers] ALTER COLUMN [Phone2] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241015185200_ChangedIntToStrings'
)
BEGIN
    DECLARE @var41 sysname;
    SELECT @var41 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'Phone1');
    IF @var41 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var41 + '];');
    ALTER TABLE [datanex_customers] ALTER COLUMN [Phone1] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241015185200_ChangedIntToStrings'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241015185200_ChangedIntToStrings', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_vat_classes] ADD [CompanyId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [CompanyId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD [CompanyId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [CompanyId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_logs] ADD [CompanyId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD [CompanyId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [CompanyId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [CompanyId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_brands] ADD [CompanyId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_additional_charges] ADD [CompanyId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [connector_wooconnectionsdata] ADD [CompanyId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [connector_jobs] ADD [CompanyId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    CREATE INDEX [IX_datanex_warehouses_CompanyId] ON [datanex_warehouses] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    CREATE INDEX [IX_datanex_vat_classes_CompanyId] ON [datanex_vat_classes] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    CREATE INDEX [IX_datanex_suppliers_CompanyId] ON [datanex_suppliers] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    CREATE INDEX [IX_datanex_statuses_CompanyId] ON [datanex_statuses] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    CREATE INDEX [IX_datanex_products_CompanyId] ON [datanex_products] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    CREATE INDEX [IX_datanex_logs_CompanyId] ON [datanex_logs] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    CREATE INDEX [IX_datanex_documenttypes_CompanyId] ON [datanex_documenttypes] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    CREATE INDEX [IX_datanex_documents_CompanyId] ON [datanex_documents] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    CREATE INDEX [IX_datanex_customers_CompanyId] ON [datanex_customers] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    CREATE INDEX [IX_datanex_brands_CompanyId] ON [datanex_brands] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    CREATE INDEX [IX_datanex_additional_charges_CompanyId] ON [datanex_additional_charges] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    CREATE INDEX [IX_connector_wooconnectionsdata_CompanyId] ON [connector_wooconnectionsdata] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    CREATE INDEX [IX_connector_parameters_CompanyId] ON [connector_parameters] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    CREATE INDEX [IX_connector_jobs_CompanyId] ON [connector_jobs] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    CREATE INDEX [IX_AspNetUsers_CompanyId] ON [AspNetUsers] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD CONSTRAINT [FK_AspNetUsers_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [connector_jobs] ADD CONSTRAINT [FK_connector_jobs_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [connector_parameters] ADD CONSTRAINT [FK_connector_parameters_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [connector_wooconnectionsdata] ADD CONSTRAINT [FK_connector_wooconnectionsdata_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_additional_charges] ADD CONSTRAINT [FK_datanex_additional_charges_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_brands] ADD CONSTRAINT [FK_datanex_brands_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD CONSTRAINT [FK_datanex_customers_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD CONSTRAINT [FK_datanex_documents_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_documenttypes] ADD CONSTRAINT [FK_datanex_documenttypes_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_logs] ADD CONSTRAINT [FK_datanex_logs_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_products] ADD CONSTRAINT [FK_datanex_products_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD CONSTRAINT [FK_datanex_statuses_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD CONSTRAINT [FK_datanex_suppliers_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_vat_classes] ADD CONSTRAINT [FK_datanex_vat_classes_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    ALTER TABLE [datanex_warehouses] ADD CONSTRAINT [FK_datanex_warehouses_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241017210027_AddedCompanyId'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241017210027_AddedCompanyId', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241019183934_AddedCompanyIdOnProductSizes'
)
BEGIN
    ALTER TABLE [datanex_product_sizes] ADD [CompanyId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241019183934_AddedCompanyIdOnProductSizes'
)
BEGIN
    CREATE INDEX [IX_datanex_product_sizes_CompanyId] ON [datanex_product_sizes] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241019183934_AddedCompanyIdOnProductSizes'
)
BEGIN
    ALTER TABLE [datanex_product_sizes] ADD CONSTRAINT [FK_datanex_product_sizes_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241019183934_AddedCompanyIdOnProductSizes'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241019183934_AddedCompanyIdOnProductSizes', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241019221951_AddedLotsAndGeneralOptions'
)
BEGIN
    CREATE TABLE [datanex_lots] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(25) NOT NULL,
        [Notes] nvarchar(255) NULL,
        [ProdDate] datetime2 NULL,
        [ExpDate] datetime2 NULL,
        [CompanyId] uniqueidentifier NOT NULL,
        [SerialNumber] int NULL,
        [Code] nvarchar(25) NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_lots] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_datanex_lots_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241019221951_AddedLotsAndGeneralOptions'
)
BEGIN
    CREATE INDEX [IX_datanex_lots_CompanyId] ON [datanex_lots] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241019221951_AddedLotsAndGeneralOptions'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241019221951_AddedLotsAndGeneralOptions', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241020115703_AddedGeneralOptions'
)
BEGIN
    CREATE TABLE [datanex_general_options] (
        [Id] uniqueidentifier NOT NULL,
        [LotsEnabled] bit NOT NULL,
        [CompanyId] uniqueidentifier NOT NULL,
        [SerialNumber] int NULL,
        [Code] nvarchar(25) NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_general_options] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_datanex_general_options_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241020115703_AddedGeneralOptions'
)
BEGIN
    CREATE INDEX [IX_datanex_general_options_CompanyId] ON [datanex_general_options] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241020115703_AddedGeneralOptions'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241020115703_AddedGeneralOptions', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241020160728_AddedLotSettings'
)
BEGIN
    CREATE TABLE [datanex_lots_settings] (
        [Id] uniqueidentifier NOT NULL,
        [LotStrategy] int NOT NULL,
        [CompanyId] uniqueidentifier NOT NULL,
        [SerialNumber] int NULL,
        [Code] nvarchar(25) NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_lots_settings] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_datanex_lots_settings_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241020160728_AddedLotSettings'
)
BEGIN
    CREATE INDEX [IX_datanex_lots_settings_CompanyId] ON [datanex_lots_settings] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241020160728_AddedLotSettings'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241020160728_AddedLotSettings', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241026202226_AddedDocumentProductLotsQuantities'
)
BEGIN
    CREATE TABLE [datanex_documentproducts_lots_quantities] (
        [Id] uniqueidentifier NOT NULL,
        [DocumentProductId] uniqueidentifier NOT NULL,
        [LotId] uniqueidentifier NOT NULL,
        [Quantity] int NOT NULL,
        [SerialNumber] int NULL,
        [Code] nvarchar(25) NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_documentproducts_lots_quantities] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_datanex_documentproducts_lots_quantities_datanex_documentproducts_DocumentProductId] FOREIGN KEY ([DocumentProductId]) REFERENCES [datanex_documentproducts] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_datanex_documentproducts_lots_quantities_datanex_lots_LotId] FOREIGN KEY ([LotId]) REFERENCES [datanex_lots] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241026202226_AddedDocumentProductLotsQuantities'
)
BEGIN
    CREATE INDEX [IX_datanex_documentproducts_lots_quantities_DocumentProductId] ON [datanex_documentproducts_lots_quantities] ([DocumentProductId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241026202226_AddedDocumentProductLotsQuantities'
)
BEGIN
    CREATE INDEX [IX_datanex_documentproducts_lots_quantities_LotId] ON [datanex_documentproducts_lots_quantities] ([LotId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241026202226_AddedDocumentProductLotsQuantities'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241026202226_AddedDocumentProductLotsQuantities', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241028120551_AddedRemainingQtyAndSupplierIdOnLots'
)
BEGIN
    ALTER TABLE [datanex_lots] ADD [RemainingQty] int NOT NULL DEFAULT 0;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241028120551_AddedRemainingQtyAndSupplierIdOnLots'
)
BEGIN
    ALTER TABLE [datanex_lots] ADD [SupplierId] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241028120551_AddedRemainingQtyAndSupplierIdOnLots'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241028120551_AddedRemainingQtyAndSupplierIdOnLots', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241028142805_AddedProductIdOnLots'
)
BEGIN
    ALTER TABLE [datanex_lots] ADD [ProductId] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241028142805_AddedProductIdOnLots'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241028142805_AddedProductIdOnLots', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241028202947_AddedLotStrategyApplyFieldOnLotsSettings'
)
BEGIN
    ALTER TABLE [datanex_lots_settings] ADD [LotStrategyApplyField] int NOT NULL DEFAULT 0;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241028202947_AddedLotStrategyApplyFieldOnLotsSettings'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241028202947_AddedLotStrategyApplyFieldOnLotsSettings', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241207140729_AddedBackingFieldDateAdded'
)
BEGIN
    ALTER TABLE [AspNetRoles] ADD [Code] nvarchar(25) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241207140729_AddedBackingFieldDateAdded'
)
BEGIN
    ALTER TABLE [AspNetRoles] ADD [DateAdded] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241207140729_AddedBackingFieldDateAdded'
)
BEGIN
    ALTER TABLE [AspNetRoles] ADD [DateUpdated] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241207140729_AddedBackingFieldDateAdded'
)
BEGIN
    ALTER TABLE [AspNetRoles] ADD [IsActive] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241207140729_AddedBackingFieldDateAdded'
)
BEGIN
    ALTER TABLE [AspNetRoles] ADD [IsDeleted] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241207140729_AddedBackingFieldDateAdded'
)
BEGIN
    ALTER TABLE [AspNetRoles] ADD [IsSeeded] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241207140729_AddedBackingFieldDateAdded'
)
BEGIN
    ALTER TABLE [AspNetRoles] ADD [SerialNumber] int NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241207140729_AddedBackingFieldDateAdded'
)
BEGIN
    ALTER TABLE [AspNetRoles] ADD [UserAdded] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241207140729_AddedBackingFieldDateAdded'
)
BEGIN
    ALTER TABLE [AspNetRoles] ADD [UserUpdated] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241207140729_AddedBackingFieldDateAdded'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241207140729_AddedBackingFieldDateAdded', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250126152637_AddedCategories'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [Barcode] nvarchar(255) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250126152637_AddedCategories'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [Category1Id] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250126152637_AddedCategories'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [Category2Id] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250126152637_AddedCategories'
)
BEGIN
    ALTER TABLE [datanex_products] ADD [Category3Id] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250126152637_AddedCategories'
)
BEGIN
    CREATE TABLE [datanex_categories] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(255) NOT NULL,
        [CategoryType] int NOT NULL,
        [CategoryLevel] tinyint NOT NULL,
        [CompanyId] uniqueidentifier NULL,
        [SerialNumber] int NULL,
        [Code] nvarchar(25) NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_categories] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250126152637_AddedCategories'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250126152637_AddedCategories', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250131224620_AddedVatClassOnDocuments'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [VatClassId] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250131224620_AddedVatClassOnDocuments'
)
BEGIN
    CREATE INDEX [IX_datanex_documents_VatClassId] ON [datanex_documents] ([VatClassId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250131224620_AddedVatClassOnDocuments'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD CONSTRAINT [FK_datanex_documents_datanex_vat_classes_VatClassId] FOREIGN KEY ([VatClassId]) REFERENCES [datanex_vat_classes] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250131224620_AddedVatClassOnDocuments'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250131224620_AddedVatClassOnDocuments', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250201211121_AddedClients'
)
BEGIN
    ALTER TABLE [datanex_companies] ADD [ClientId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250201211121_AddedClients'
)
BEGIN
    CREATE TABLE [datanex_clients] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(255) NOT NULL,
        [Address] nvarchar(255) NOT NULL,
        [Region] nvarchar(255) NULL,
        [PostalCode] nvarchar(15) NOT NULL,
        [City] nvarchar(100) NOT NULL,
        [Country] nvarchar(100) NOT NULL,
        [Phone1] nvarchar(25) NOT NULL,
        [Phone2] nvarchar(25) NULL,
        [Email] nvarchar(100) NOT NULL,
        [SerialNumber] int NULL,
        [Code] nvarchar(25) NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_clients] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250201211121_AddedClients'
)
BEGIN
    CREATE INDEX [IX_datanex_companies_ClientId] ON [datanex_companies] ([ClientId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250201211121_AddedClients'
)
BEGIN
    ALTER TABLE [datanex_companies] ADD CONSTRAINT [FK_datanex_companies_datanex_clients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [datanex_clients] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250201211121_AddedClients'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250201211121_AddedClients', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250202194827_AddedCompanyLoginCode'
)
BEGIN
    DECLARE @var42 sysname;
    SELECT @var42 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[AspNetRoles]') AND [c].[name] = N'Code');
    IF @var42 IS NOT NULL EXEC(N'ALTER TABLE [AspNetRoles] DROP CONSTRAINT [' + @var42 + '];');
    ALTER TABLE [AspNetRoles] DROP COLUMN [Code];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250202194827_AddedCompanyLoginCode'
)
BEGIN
    DECLARE @var43 sysname;
    SELECT @var43 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[AspNetRoles]') AND [c].[name] = N'SerialNumber');
    IF @var43 IS NOT NULL EXEC(N'ALTER TABLE [AspNetRoles] DROP CONSTRAINT [' + @var43 + '];');
    ALTER TABLE [AspNetRoles] DROP COLUMN [SerialNumber];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250202194827_AddedCompanyLoginCode'
)
BEGIN
    ALTER TABLE [datanex_companies] ADD [CompanyLoginCode] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250202194827_AddedCompanyLoginCode'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250202194827_AddedCompanyLoginCode', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250211192708_AddedCompanyData'
)
BEGIN
    ALTER TABLE [datanex_companies] DROP CONSTRAINT [FK_datanex_companies_datanex_clients_ClientId];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250211192708_AddedCompanyData'
)
BEGIN
    DROP TABLE [datanex_clients];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250211192708_AddedCompanyData'
)
BEGIN
    DROP INDEX [IX_datanex_companies_ClientId] ON [datanex_companies];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250211192708_AddedCompanyData'
)
BEGIN
    ALTER TABLE [datanex_companies] ADD [Address] nvarchar(max) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250211192708_AddedCompanyData'
)
BEGIN
    ALTER TABLE [datanex_companies] ADD [City] nvarchar(max) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250211192708_AddedCompanyData'
)
BEGIN
    ALTER TABLE [datanex_companies] ADD [Country] nvarchar(max) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250211192708_AddedCompanyData'
)
BEGIN
    ALTER TABLE [datanex_companies] ADD [Email] nvarchar(max) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250211192708_AddedCompanyData'
)
BEGIN
    ALTER TABLE [datanex_companies] ADD [Phone1] nvarchar(max) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250211192708_AddedCompanyData'
)
BEGIN
    ALTER TABLE [datanex_companies] ADD [Phone2] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250211192708_AddedCompanyData'
)
BEGIN
    ALTER TABLE [datanex_companies] ADD [PostalCode] nvarchar(max) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250211192708_AddedCompanyData'
)
BEGIN
    ALTER TABLE [datanex_companies] ADD [Region] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250211192708_AddedCompanyData'
)
BEGIN
    ALTER TABLE [datanex_companies] ADD [TaxOffice] nvarchar(max) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250211192708_AddedCompanyData'
)
BEGIN
    ALTER TABLE [datanex_companies] ADD [VatNumber] nvarchar(max) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250211192708_AddedCompanyData'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250211192708_AddedCompanyData', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250325145303_AddedBasicFieldsOnUser'
)
BEGIN
    DECLARE @var44 sysname;
    SELECT @var44 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[AspNetUsers]') AND [c].[name] = N'UserRole');
    IF @var44 IS NOT NULL EXEC(N'ALTER TABLE [AspNetUsers] DROP CONSTRAINT [' + @var44 + '];');
    ALTER TABLE [AspNetUsers] DROP COLUMN [UserRole];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250325145303_AddedBasicFieldsOnUser'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD [Address] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250325145303_AddedBasicFieldsOnUser'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD [BirthDay] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250325145303_AddedBasicFieldsOnUser'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD [City] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250325145303_AddedBasicFieldsOnUser'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD [Country] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250325145303_AddedBasicFieldsOnUser'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD [FacebookUrl] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250325145303_AddedBasicFieldsOnUser'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD [Image] varbinary(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250325145303_AddedBasicFieldsOnUser'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD [InstagramUrl] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250325145303_AddedBasicFieldsOnUser'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD [LinkedInUrl] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250325145303_AddedBasicFieldsOnUser'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD [Notes] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250325145303_AddedBasicFieldsOnUser'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD [Occupation] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250325145303_AddedBasicFieldsOnUser'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD [Phone1] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250325145303_AddedBasicFieldsOnUser'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD [Phone2] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250325145303_AddedBasicFieldsOnUser'
)
BEGIN
    ALTER TABLE [AspNetUsers] ADD [PostalCode] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250325145303_AddedBasicFieldsOnUser'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250325145303_AddedBasicFieldsOnUser', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250330151612_AddedStatusTypeOnStatuses'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD [StatusType] int NOT NULL DEFAULT 0;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250330151612_AddedStatusTypeOnStatuses'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250330151612_AddedStatusTypeOnStatuses', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250414191409_AddedWorkItemTypes'
)
BEGIN
    CREATE TABLE [datanex_workitem_types] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(50) NOT NULL,
        [Type] int NOT NULL,
        [CompanyId] uniqueidentifier NULL,
        [SerialNumber] int NULL,
        [Code] nvarchar(25) NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_workitem_types] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_datanex_workitem_types_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250414191409_AddedWorkItemTypes'
)
BEGIN
    CREATE INDEX [IX_datanex_workitem_types_CompanyId] ON [datanex_workitem_types] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250414191409_AddedWorkItemTypes'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250414191409_AddedWorkItemTypes', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250415193314_AddedWorkItems'
)
BEGIN
    EXEC sp_rename N'[datanex_workitem_types].[Type]', N'Category', N'COLUMN';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250415193314_AddedWorkItems'
)
BEGIN
    CREATE TABLE [datanex_workitems] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(100) NOT NULL,
        [Description] nvarchar(max) NULL,
        [MasterTaskId] uniqueidentifier NULL,
        [StatusId] uniqueidentifier NULL,
        [AssigneeId] uniqueidentifier NULL,
        [WorkItemTypeId] uniqueidentifier NULL,
        [WorkItemCategory] int NOT NULL,
        [SprintId] uniqueidentifier NULL,
        [DueDate] datetime2 NULL,
        [CompanyId] uniqueidentifier NULL,
        [SerialNumber] int NULL,
        [Code] nvarchar(25) NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_workitems] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_datanex_workitems_AspNetUsers_AssigneeId] FOREIGN KEY ([AssigneeId]) REFERENCES [AspNetUsers] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_datanex_workitems_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_datanex_workitems_datanex_statuses_StatusId] FOREIGN KEY ([StatusId]) REFERENCES [datanex_statuses] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_datanex_workitems_datanex_workitem_types_WorkItemTypeId] FOREIGN KEY ([WorkItemTypeId]) REFERENCES [datanex_workitem_types] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250415193314_AddedWorkItems'
)
BEGIN
    CREATE INDEX [IX_datanex_workitems_AssigneeId] ON [datanex_workitems] ([AssigneeId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250415193314_AddedWorkItems'
)
BEGIN
    CREATE INDEX [IX_datanex_workitems_CompanyId] ON [datanex_workitems] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250415193314_AddedWorkItems'
)
BEGIN
    CREATE INDEX [IX_datanex_workitems_StatusId] ON [datanex_workitems] ([StatusId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250415193314_AddedWorkItems'
)
BEGIN
    CREATE INDEX [IX_datanex_workitems_WorkItemTypeId] ON [datanex_workitems] ([WorkItemTypeId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250415193314_AddedWorkItems'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250415193314_AddedWorkItems', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250417122351_AddedOrderAndIconOnStatusAndWorkItemTypes'
)
BEGIN
    ALTER TABLE [datanex_workitem_types] ADD [Icon] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250417122351_AddedOrderAndIconOnStatusAndWorkItemTypes'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD [Icon] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250417122351_AddedOrderAndIconOnStatusAndWorkItemTypes'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD [Order] smallint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250417122351_AddedOrderAndIconOnStatusAndWorkItemTypes'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250417122351_AddedOrderAndIconOnStatusAndWorkItemTypes', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250417124645_AddedIconColorAndIsDefaultOnStatusesAndWorkItemTypes'
)
BEGIN
    ALTER TABLE [datanex_workitem_types] ADD [IconColor] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250417124645_AddedIconColorAndIsDefaultOnStatusesAndWorkItemTypes'
)
BEGIN
    ALTER TABLE [datanex_workitem_types] ADD [IsDefault] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250417124645_AddedIconColorAndIsDefaultOnStatusesAndWorkItemTypes'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD [IconColor] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250417124645_AddedIconColorAndIsDefaultOnStatusesAndWorkItemTypes'
)
BEGIN
    ALTER TABLE [datanex_statuses] ADD [IsDefault] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250417124645_AddedIconColorAndIsDefaultOnStatusesAndWorkItemTypes'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250417124645_AddedIconColorAndIsDefaultOnStatusesAndWorkItemTypes', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250419182000_AddedWorkItemPriorityOnWorkItems'
)
BEGIN
    ALTER TABLE [datanex_workitems] ADD [WorkItemPriority] int NOT NULL DEFAULT 0;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250419182000_AddedWorkItemPriorityOnWorkItems'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250419182000_AddedWorkItemPriorityOnWorkItems', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250423201608_AddedAppPermissions'
)
BEGIN
    CREATE TABLE [dn_permissions] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(100) NOT NULL,
        [Key] nvarchar(100) NOT NULL,
        [CompanyId] uniqueidentifier NOT NULL,
        [SerialNumber] int NULL,
        [Code] nvarchar(25) NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_dn_permissions] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_dn_permissions_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250423201608_AddedAppPermissions'
)
BEGIN
    CREATE INDEX [IX_dn_permissions_CompanyId] ON [dn_permissions] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250423201608_AddedAppPermissions'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250423201608_AddedAppPermissions', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250510193315_AddedWarehouseOnDocuments'
)
BEGIN
    ALTER TABLE [dn_permissions] ADD [AppEntity] int NOT NULL DEFAULT 0;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250510193315_AddedWarehouseOnDocuments'
)
BEGIN
    ALTER TABLE [dn_permissions] ADD [EntityId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250510193315_AddedWarehouseOnDocuments'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD [WarehouseId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250510193315_AddedWarehouseOnDocuments'
)
BEGIN
    CREATE INDEX [IX_datanex_documents_WarehouseId] ON [datanex_documents] ([WarehouseId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250510193315_AddedWarehouseOnDocuments'
)
BEGIN
    ALTER TABLE [datanex_documents] ADD CONSTRAINT [FK_datanex_documents_datanex_warehouses_WarehouseId] FOREIGN KEY ([WarehouseId]) REFERENCES [datanex_warehouses] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250510193315_AddedWarehouseOnDocuments'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250510193315_AddedWarehouseOnDocuments', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250518202044_UpdatePermissions'
)
BEGIN
    ALTER TABLE [dn_permissions] DROP CONSTRAINT [FK_dn_permissions_datanex_companies_CompanyId];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250518202044_UpdatePermissions'
)
BEGIN
    ALTER TABLE [dn_permissions] DROP CONSTRAINT [PK_dn_permissions];
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250518202044_UpdatePermissions'
)
BEGIN
    EXEC sp_rename N'[dn_permissions]', N'datanex_permissions';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250518202044_UpdatePermissions'
)
BEGIN
    EXEC sp_rename N'[datanex_permissions].[EntityId]', N'MasterEntityId', N'COLUMN';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250518202044_UpdatePermissions'
)
BEGIN
    EXEC sp_rename N'[datanex_permissions].[IX_dn_permissions_CompanyId]', N'IX_datanex_permissions_CompanyId', N'INDEX';
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250518202044_UpdatePermissions'
)
BEGIN
    ALTER TABLE [datanex_permissions] ADD CONSTRAINT [PK_datanex_permissions] PRIMARY KEY ([Id]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250518202044_UpdatePermissions'
)
BEGIN
    ALTER TABLE [datanex_permissions] ADD CONSTRAINT [FK_datanex_permissions_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250518202044_UpdatePermissions'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250518202044_UpdatePermissions', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250520120012_AddedMasterEntityDescr'
)
BEGIN
    ALTER TABLE [datanex_permissions] ADD [MasterEntityDescr] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250520120012_AddedMasterEntityDescr'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250520120012_AddedMasterEntityDescr', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250520203647_AddedUserAppPermissions'
)
BEGIN
    CREATE TABLE [datanex_user_permissions] (
        [Id] uniqueidentifier NOT NULL,
        [AppPermissionId] uniqueidentifier NULL,
        [UserId] uniqueidentifier NULL,
        [CompanyId] uniqueidentifier NULL,
        [SerialNumber] int NULL,
        [Code] nvarchar(25) NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_datanex_user_permissions] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_datanex_user_permissions_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_datanex_user_permissions_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_datanex_user_permissions_datanex_permissions_AppPermissionId] FOREIGN KEY ([AppPermissionId]) REFERENCES [datanex_permissions] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250520203647_AddedUserAppPermissions'
)
BEGIN
    CREATE INDEX [IX_datanex_user_permissions_AppPermissionId] ON [datanex_user_permissions] ([AppPermissionId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250520203647_AddedUserAppPermissions'
)
BEGIN
    CREATE INDEX [IX_datanex_user_permissions_CompanyId] ON [datanex_user_permissions] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250520203647_AddedUserAppPermissions'
)
BEGIN
    CREATE INDEX [IX_datanex_user_permissions_UserId] ON [datanex_user_permissions] ([UserId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250520203647_AddedUserAppPermissions'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250520203647_AddedUserAppPermissions', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250602191014_AddedConnectorDatasources'
)
BEGIN
    CREATE TABLE [cntor_datasources] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(100) NOT NULL,
        [Description] nvarchar(250) NULL,
        [Icon] nvarchar(max) NULL,
        [IconColor] nvarchar(max) NULL,
        [HasCustomImage] bit NOT NULL,
        [CustomImagePath] nvarchar(max) NULL,
        [CustomImageWidth] int NULL,
        [CompanyId] uniqueidentifier NULL,
        [SerialNumber] int NULL,
        [Code] nvarchar(25) NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_cntor_datasources] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_cntor_datasources_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250602191014_AddedConnectorDatasources'
)
BEGIN
    CREATE INDEX [IX_cntor_datasources_CompanyId] ON [cntor_datasources] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250602191014_AddedConnectorDatasources'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250602191014_AddedConnectorDatasources', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250607080609_AddedConnectorDatasourceEntities'
)
BEGIN
    CREATE TABLE [cntor_datasource_entities] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(100) NOT NULL,
        [Description] nvarchar(250) NULL,
        [Icon] nvarchar(max) NULL,
        [IconColor] nvarchar(max) NULL,
        [CntorDatasourceId] uniqueidentifier NOT NULL,
        [CompanyId] uniqueidentifier NULL,
        [SerialNumber] int NULL,
        [Code] nvarchar(25) NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_cntor_datasource_entities] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_cntor_datasource_entities_cntor_datasources_CntorDatasourceId] FOREIGN KEY ([CntorDatasourceId]) REFERENCES [cntor_datasources] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_cntor_datasource_entities_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250607080609_AddedConnectorDatasourceEntities'
)
BEGIN
    CREATE INDEX [IX_cntor_datasource_entities_CntorDatasourceId] ON [cntor_datasource_entities] ([CntorDatasourceId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250607080609_AddedConnectorDatasourceEntities'
)
BEGIN
    CREATE INDEX [IX_cntor_datasource_entities_CompanyId] ON [cntor_datasource_entities] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250607080609_AddedConnectorDatasourceEntities'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250607080609_AddedConnectorDatasourceEntities', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var45 sysname;
    SELECT @var45 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_suppliers]') AND [c].[name] = N'TaxOffice');
    IF @var45 IS NOT NULL EXEC(N'ALTER TABLE [datanex_suppliers] DROP CONSTRAINT [' + @var45 + '];');
    ALTER TABLE [datanex_suppliers] ALTER COLUMN [TaxOffice] nvarchar(50) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var46 sysname;
    SELECT @var46 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_suppliers]') AND [c].[name] = N'Region');
    IF @var46 IS NOT NULL EXEC(N'ALTER TABLE [datanex_suppliers] DROP CONSTRAINT [' + @var46 + '];');
    ALTER TABLE [datanex_suppliers] ALTER COLUMN [Region] nvarchar(255) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var47 sysname;
    SELECT @var47 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_suppliers]') AND [c].[name] = N'PostalCode');
    IF @var47 IS NOT NULL EXEC(N'ALTER TABLE [datanex_suppliers] DROP CONSTRAINT [' + @var47 + '];');
    ALTER TABLE [datanex_suppliers] ALTER COLUMN [PostalCode] nvarchar(10) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var48 sysname;
    SELECT @var48 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_suppliers]') AND [c].[name] = N'Phone2');
    IF @var48 IS NOT NULL EXEC(N'ALTER TABLE [datanex_suppliers] DROP CONSTRAINT [' + @var48 + '];');
    ALTER TABLE [datanex_suppliers] ALTER COLUMN [Phone2] nvarchar(20) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var49 sysname;
    SELECT @var49 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_suppliers]') AND [c].[name] = N'Phone1');
    IF @var49 IS NOT NULL EXEC(N'ALTER TABLE [datanex_suppliers] DROP CONSTRAINT [' + @var49 + '];');
    ALTER TABLE [datanex_suppliers] ALTER COLUMN [Phone1] nvarchar(20) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var50 sysname;
    SELECT @var50 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_suppliers]') AND [c].[name] = N'Name');
    IF @var50 IS NOT NULL EXEC(N'ALTER TABLE [datanex_suppliers] DROP CONSTRAINT [' + @var50 + '];');
    ALTER TABLE [datanex_suppliers] ALTER COLUMN [Name] nvarchar(255) NOT NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var51 sysname;
    SELECT @var51 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_suppliers]') AND [c].[name] = N'Email');
    IF @var51 IS NOT NULL EXEC(N'ALTER TABLE [datanex_suppliers] DROP CONSTRAINT [' + @var51 + '];');
    ALTER TABLE [datanex_suppliers] ALTER COLUMN [Email] nvarchar(100) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var52 sysname;
    SELECT @var52 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_suppliers]') AND [c].[name] = N'Country');
    IF @var52 IS NOT NULL EXEC(N'ALTER TABLE [datanex_suppliers] DROP CONSTRAINT [' + @var52 + '];');
    ALTER TABLE [datanex_suppliers] ALTER COLUMN [Country] nvarchar(50) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var53 sysname;
    SELECT @var53 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_suppliers]') AND [c].[name] = N'City');
    IF @var53 IS NOT NULL EXEC(N'ALTER TABLE [datanex_suppliers] DROP CONSTRAINT [' + @var53 + '];');
    ALTER TABLE [datanex_suppliers] ALTER COLUMN [City] nvarchar(100) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [Notes] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [UserDate1] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [UserDate2] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [UserDate3] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [UserDate4] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [UserNumber1] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [UserNumber2] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [UserNumber3] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [UserNumber4] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [UserText1] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [UserText2] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [UserText3] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [UserText4] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var54 sysname;
    SELECT @var54 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'TaxOffice');
    IF @var54 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var54 + '];');
    ALTER TABLE [datanex_customers] ALTER COLUMN [TaxOffice] nvarchar(50) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var55 sysname;
    SELECT @var55 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'Region');
    IF @var55 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var55 + '];');
    ALTER TABLE [datanex_customers] ALTER COLUMN [Region] nvarchar(255) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var56 sysname;
    SELECT @var56 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'PostalCode');
    IF @var56 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var56 + '];');
    ALTER TABLE [datanex_customers] ALTER COLUMN [PostalCode] nvarchar(10) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var57 sysname;
    SELECT @var57 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'Phone2');
    IF @var57 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var57 + '];');
    ALTER TABLE [datanex_customers] ALTER COLUMN [Phone2] nvarchar(20) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var58 sysname;
    SELECT @var58 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'Phone1');
    IF @var58 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var58 + '];');
    ALTER TABLE [datanex_customers] ALTER COLUMN [Phone1] nvarchar(20) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var59 sysname;
    SELECT @var59 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'Name');
    IF @var59 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var59 + '];');
    ALTER TABLE [datanex_customers] ALTER COLUMN [Name] nvarchar(255) NOT NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var60 sysname;
    SELECT @var60 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'Email');
    IF @var60 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var60 + '];');
    ALTER TABLE [datanex_customers] ALTER COLUMN [Email] nvarchar(100) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var61 sysname;
    SELECT @var61 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'Country');
    IF @var61 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var61 + '];');
    ALTER TABLE [datanex_customers] ALTER COLUMN [Country] nvarchar(50) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    DECLARE @var62 sysname;
    SELECT @var62 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[datanex_customers]') AND [c].[name] = N'City');
    IF @var62 IS NOT NULL EXEC(N'ALTER TABLE [datanex_customers] DROP CONSTRAINT [' + @var62 + '];');
    ALTER TABLE [datanex_customers] ALTER COLUMN [City] nvarchar(100) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [Notes] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [UserDate1] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [UserDate2] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [UserDate3] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [UserDate4] datetime2 NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [UserNumber1] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [UserNumber2] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [UserNumber3] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [UserNumber4] bigint NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [UserText1] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [UserText2] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [UserText3] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [UserText4] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [VatClassId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    CREATE INDEX [IX_datanex_customers_VatClassId] ON [datanex_customers] ([VatClassId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD CONSTRAINT [FK_datanex_customers_datanex_vat_classes_VatClassId] FOREIGN KEY ([VatClassId]) REFERENCES [datanex_vat_classes] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250711201819_AddedNewCustomerFields'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250711201819_AddedNewCustomerFields', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250713151127_AddedCompanyNameAndOccupationOnCustomer'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [CompanyName] nvarchar(255) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250713151127_AddedCompanyNameAndOccupationOnCustomer'
)
BEGIN
    ALTER TABLE [datanex_suppliers] ADD [Occupation] nvarchar(255) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250713151127_AddedCompanyNameAndOccupationOnCustomer'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [CompanyName] nvarchar(255) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250713151127_AddedCompanyNameAndOccupationOnCustomer'
)
BEGIN
    ALTER TABLE [datanex_customers] ADD [Occupation] nvarchar(255) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250713151127_AddedCompanyNameAndOccupationOnCustomer'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250713151127_AddedCompanyNameAndOccupationOnCustomer', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250816143659_AddedAddresses'
)
BEGIN
    CREATE TABLE [dn_addresses] (
        [Id] uniqueidentifier NOT NULL,
        [Street] nvarchar(max) NOT NULL,
        [StreetNumber] nvarchar(max) NULL,
        [PostalCode] nvarchar(max) NULL,
        [City] nvarchar(max) NOT NULL,
        [Country] nvarchar(max) NULL,
        [CompanyId] uniqueidentifier NOT NULL,
        [SerialNumber] int NULL,
        [Code] nvarchar(25) NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_dn_addresses] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_dn_addresses_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250816143659_AddedAddresses'
)
BEGIN
    CREATE TABLE [dn_customer_addresses] (
        [Id] uniqueidentifier NOT NULL,
        [AddressType] int NOT NULL,
        [AddressId] uniqueidentifier NOT NULL,
        [CustomerId] uniqueidentifier NOT NULL,
        [CompanyId] uniqueidentifier NOT NULL,
        [SerialNumber] int NULL,
        [Code] nvarchar(25) NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_dn_customer_addresses] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_dn_customer_addresses_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_dn_customer_addresses_datanex_customers_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [datanex_customers] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_dn_customer_addresses_dn_addresses_AddressId] FOREIGN KEY ([AddressId]) REFERENCES [dn_addresses] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250816143659_AddedAddresses'
)
BEGIN
    CREATE INDEX [IX_dn_addresses_CompanyId] ON [dn_addresses] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250816143659_AddedAddresses'
)
BEGIN
    CREATE INDEX [IX_dn_customer_addresses_AddressId] ON [dn_customer_addresses] ([AddressId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250816143659_AddedAddresses'
)
BEGIN
    CREATE INDEX [IX_dn_customer_addresses_CompanyId] ON [dn_customer_addresses] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250816143659_AddedAddresses'
)
BEGIN
    CREATE INDEX [IX_dn_customer_addresses_CustomerId] ON [dn_customer_addresses] ([CustomerId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250816143659_AddedAddresses'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250816143659_AddedAddresses', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250818202657_AddedNotesAndIsDefaultOnCustomerAddresses'
)
BEGIN
    ALTER TABLE [dn_customer_addresses] ADD [IsDefault] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250818202657_AddedNotesAndIsDefaultOnCustomerAddresses'
)
BEGIN
    ALTER TABLE [dn_customer_addresses] ADD [Notes] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250818202657_AddedNotesAndIsDefaultOnCustomerAddresses'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250818202657_AddedNotesAndIsDefaultOnCustomerAddresses', N'8.0.1');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250924174853_AddedDocumentSeries'
)
BEGIN
    CREATE TABLE [dn_document_series] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(50) NOT NULL,
        [Notes] nvarchar(255) NULL,
        [Abbreviation] nvarchar(10) NOT NULL,
        [Prefix] nvarchar(10) NULL,
        [Suffix] nvarchar(10) NULL,
        [CurrentNumber] int NOT NULL,
        [AllowManualNumbering] bit NOT NULL,
        [CompanyId] uniqueidentifier NULL,
        [DocumentTypeId] uniqueidentifier NOT NULL,
        [SerialNumber] int NULL,
        [Code] nvarchar(25) NULL,
        [IsActive] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsSeeded] bit NOT NULL,
        [DateAdded] datetime2 NOT NULL,
        [UserAdded] uniqueidentifier NULL,
        [DateUpdated] datetime2 NULL,
        [UserUpdated] uniqueidentifier NULL,
        CONSTRAINT [PK_dn_document_series] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_dn_document_series_datanex_companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [datanex_companies] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_dn_document_series_datanex_documenttypes_DocumentTypeId] FOREIGN KEY ([DocumentTypeId]) REFERENCES [datanex_documenttypes] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250924174853_AddedDocumentSeries'
)
BEGIN
    CREATE INDEX [IX_dn_document_series_CompanyId] ON [dn_document_series] ([CompanyId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250924174853_AddedDocumentSeries'
)
BEGIN
    CREATE INDEX [IX_dn_document_series_DocumentTypeId] ON [dn_document_series] ([DocumentTypeId]);
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250924174853_AddedDocumentSeries'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250924174853_AddedDocumentSeries', N'8.0.1');
END;
GO

COMMIT;
GO

