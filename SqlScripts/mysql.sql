CREATE TABLE IF NOT EXISTS `__EFMigrationsHistory` (
    `MigrationId` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
    `ProductVersion` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK___EFMigrationsHistory` PRIMARY KEY (`MigrationId`)
) CHARACTER SET=utf8mb4;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    ALTER DATABASE CHARACTER SET utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `AspNetRoles` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(256) CHARACTER SET utf8mb4 NULL,
        `NormalizedName` varchar(256) CHARACTER SET utf8mb4 NULL,
        `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 NULL,
        CONSTRAINT `PK_AspNetRoles` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `AspNetUsers` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NOT NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        `UserRole` int NOT NULL,
        `CompanyId` char(36) COLLATE ascii_general_ci NULL,
        `UserName` varchar(256) CHARACTER SET utf8mb4 NULL,
        `NormalizedUserName` varchar(256) CHARACTER SET utf8mb4 NULL,
        `Email` varchar(256) CHARACTER SET utf8mb4 NULL,
        `NormalizedEmail` varchar(256) CHARACTER SET utf8mb4 NULL,
        `EmailConfirmed` tinyint(1) NOT NULL,
        `PasswordHash` longtext CHARACTER SET utf8mb4 NULL,
        `SecurityStamp` longtext CHARACTER SET utf8mb4 NULL,
        `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 NULL,
        `PhoneNumber` longtext CHARACTER SET utf8mb4 NULL,
        `PhoneNumberConfirmed` tinyint(1) NOT NULL,
        `TwoFactorEnabled` tinyint(1) NOT NULL,
        `LockoutEnd` datetime(6) NULL,
        `LockoutEnabled` tinyint(1) NOT NULL,
        `AccessFailedCount` int NOT NULL,
        CONSTRAINT `PK_AspNetUsers` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `connector_parameters` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `CompanyId` char(36) COLLATE ascii_general_ci NULL,
        `WooBaseUrl` longtext CHARACTER SET utf8mb4 NULL,
        `WooConsumerKey` longtext CHARACTER SET utf8mb4 NULL,
        `WooConsumerSecret` longtext CHARACTER SET utf8mb4 NULL,
        CONSTRAINT `PK_connector_parameters` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `connector_wooconnectionsdata` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
        `RequestType` int NOT NULL,
        `Endpoint` longtext CHARACTER SET utf8mb4 NOT NULL,
        CONSTRAINT `PK_connector_wooconnectionsdata` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `datanex_brands` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_brands` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `datanex_customers` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Address` longtext CHARACTER SET utf8mb4 NULL,
        `Region` longtext CHARACTER SET utf8mb4 NULL,
        `PostalCode` longtext CHARACTER SET utf8mb4 NULL,
        `City` longtext CHARACTER SET utf8mb4 NULL,
        `Country` longtext CHARACTER SET utf8mb4 NULL,
        `Phone1` bigint NULL,
        `Phone2` bigint NULL,
        `Email` longtext CHARACTER SET utf8mb4 NULL,
        `VatNumber` int NULL,
        `TaxOffice` longtext CHARACTER SET utf8mb4 NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_customers` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `datanex_documenttypes` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
        `Description` varchar(50) CHARACTER SET utf8mb4 NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_documenttypes` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `datanex_logs` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `LogName` longtext CHARACTER SET utf8mb4 NOT NULL,
        `LogType` int NOT NULL,
        `LogOrigin` int NOT NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_logs` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `datanex_product_sizes` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
        `Abbreviation` varchar(10) CHARACTER SET utf8mb4 NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_product_sizes` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `datanex_statuses` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_statuses` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `AspNetRoleClaims` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `RoleId` char(36) COLLATE ascii_general_ci NOT NULL,
        `ClaimType` longtext CHARACTER SET utf8mb4 NULL,
        `ClaimValue` longtext CHARACTER SET utf8mb4 NULL,
        CONSTRAINT `PK_AspNetRoleClaims` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE RESTRICT
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `AspNetUserClaims` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `UserId` char(36) COLLATE ascii_general_ci NOT NULL,
        `ClaimType` longtext CHARACTER SET utf8mb4 NULL,
        `ClaimValue` longtext CHARACTER SET utf8mb4 NULL,
        CONSTRAINT `PK_AspNetUserClaims` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE RESTRICT
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `AspNetUserLogins` (
        `LoginProvider` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `ProviderKey` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `ProviderDisplayName` longtext CHARACTER SET utf8mb4 NULL,
        `UserId` char(36) COLLATE ascii_general_ci NOT NULL,
        CONSTRAINT `PK_AspNetUserLogins` PRIMARY KEY (`LoginProvider`, `ProviderKey`),
        CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE RESTRICT
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `AspNetUserRoles` (
        `UserId` char(36) COLLATE ascii_general_ci NOT NULL,
        `RoleId` char(36) COLLATE ascii_general_ci NOT NULL,
        CONSTRAINT `PK_AspNetUserRoles` PRIMARY KEY (`UserId`, `RoleId`),
        CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE RESTRICT,
        CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE RESTRICT
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `AspNetUserTokens` (
        `UserId` char(36) COLLATE ascii_general_ci NOT NULL,
        `LoginProvider` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `Name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `Value` longtext CHARACTER SET utf8mb4 NULL,
        CONSTRAINT `PK_AspNetUserTokens` PRIMARY KEY (`UserId`, `LoginProvider`, `Name`),
        CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE RESTRICT
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `datanex_products` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Sku` longtext CHARACTER SET utf8mb4 NULL,
        `Name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `Description` longtext CHARACTER SET utf8mb4 NULL,
        `ImagePath` longtext CHARACTER SET utf8mb4 NULL,
        `Price` decimal(18,2) NULL,
        `BrandId` char(36) COLLATE ascii_general_ci NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_products` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_datanex_products_datanex_brands_BrandId` FOREIGN KEY (`BrandId`) REFERENCES `datanex_brands` (`Id`) ON DELETE RESTRICT
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `datanex_documents` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `DocumentDateTime` datetime(6) NOT NULL,
        `DocumentTypeId` char(36) COLLATE ascii_general_ci NOT NULL,
        `DocumentNumber` int NOT NULL,
        `DocumentStatusId` char(36) COLLATE ascii_general_ci NULL,
        `CustomerId` char(36) COLLATE ascii_general_ci NOT NULL,
        `DocumentTotal` decimal(18,2) NULL,
        `ShippingAddress` varchar(255) CHARACTER SET utf8mb4 NULL,
        `ShippingRegion` varchar(50) CHARACTER SET utf8mb4 NULL,
        `ShippingPostalCode` int NULL,
        `ShippingCity` varchar(50) CHARACTER SET utf8mb4 NULL,
        `ShippingCountry` varchar(50) CHARACTER SET utf8mb4 NULL,
        `ShippingPhone1` bigint NULL,
        `ShippingPhone2` bigint NULL,
        `ShippingEmail` varchar(255) CHARACTER SET utf8mb4 NULL,
        `UserText1` longtext CHARACTER SET utf8mb4 NULL,
        `UserText2` longtext CHARACTER SET utf8mb4 NULL,
        `UserText3` longtext CHARACTER SET utf8mb4 NULL,
        `UserText4` longtext CHARACTER SET utf8mb4 NULL,
        `UserNumber1` bigint NULL,
        `UserNumber2` bigint NULL,
        `UserNumber3` bigint NULL,
        `UserNumber4` bigint NULL,
        `UserDate1` datetime(6) NULL,
        `UserDate2` datetime(6) NULL,
        `UserDate3` datetime(6) NULL,
        `UserDate4` datetime(6) NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_documents` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_datanex_documents_datanex_customers_CustomerId` FOREIGN KEY (`CustomerId`) REFERENCES `datanex_customers` (`Id`) ON DELETE RESTRICT,
        CONSTRAINT `FK_datanex_documents_datanex_documenttypes_DocumentTypeId` FOREIGN KEY (`DocumentTypeId`) REFERENCES `datanex_documenttypes` (`Id`) ON DELETE RESTRICT,
        CONSTRAINT `FK_datanex_documents_datanex_statuses_DocumentStatusId` FOREIGN KEY (`DocumentStatusId`) REFERENCES `datanex_statuses` (`Id`) ON DELETE RESTRICT
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `datanex_product_barcodes` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `ProductId` char(36) COLLATE ascii_general_ci NOT NULL,
        `SizeId` char(36) COLLATE ascii_general_ci NULL,
        `Barcode` varchar(255) CHARACTER SET utf8mb4 NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_product_barcodes` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_datanex_product_barcodes_datanex_product_sizes_SizeId` FOREIGN KEY (`SizeId`) REFERENCES `datanex_product_sizes` (`Id`) ON DELETE RESTRICT,
        CONSTRAINT `FK_datanex_product_barcodes_datanex_products_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `datanex_products` (`Id`) ON DELETE RESTRICT
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE TABLE `datanex_documentproducts` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `DocumentId` char(36) COLLATE ascii_general_ci NOT NULL,
        `ProductId` char(36) COLLATE ascii_general_ci NOT NULL,
        `Price` decimal(18,2) NOT NULL,
        `Quantity` int NOT NULL,
        `TotalPrice` decimal(18,2) NOT NULL,
        `ProductSizeId` char(36) COLLATE ascii_general_ci NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_documentproducts` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_datanex_documentproducts_datanex_documents_DocumentId` FOREIGN KEY (`DocumentId`) REFERENCES `datanex_documents` (`Id`) ON DELETE RESTRICT,
        CONSTRAINT `FK_datanex_documentproducts_datanex_product_sizes_ProductSizeId` FOREIGN KEY (`ProductSizeId`) REFERENCES `datanex_product_sizes` (`Id`) ON DELETE RESTRICT,
        CONSTRAINT `FK_datanex_documentproducts_datanex_products_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `datanex_products` (`Id`) ON DELETE RESTRICT
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE INDEX `IX_AspNetRoleClaims_RoleId` ON `AspNetRoleClaims` (`RoleId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE UNIQUE INDEX `RoleNameIndex` ON `AspNetRoles` (`NormalizedName`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE INDEX `IX_AspNetUserClaims_UserId` ON `AspNetUserClaims` (`UserId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE INDEX `IX_AspNetUserLogins_UserId` ON `AspNetUserLogins` (`UserId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE INDEX `IX_AspNetUserRoles_RoleId` ON `AspNetUserRoles` (`RoleId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE INDEX `EmailIndex` ON `AspNetUsers` (`NormalizedEmail`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE UNIQUE INDEX `UserNameIndex` ON `AspNetUsers` (`NormalizedUserName`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE INDEX `IX_datanex_documentproducts_DocumentId` ON `datanex_documentproducts` (`DocumentId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE INDEX `IX_datanex_documentproducts_ProductId` ON `datanex_documentproducts` (`ProductId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE INDEX `IX_datanex_documentproducts_ProductSizeId` ON `datanex_documentproducts` (`ProductSizeId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE INDEX `IX_datanex_documents_CustomerId` ON `datanex_documents` (`CustomerId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE INDEX `IX_datanex_documents_DocumentStatusId` ON `datanex_documents` (`DocumentStatusId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE INDEX `IX_datanex_documents_DocumentTypeId` ON `datanex_documents` (`DocumentTypeId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE INDEX `IX_datanex_product_barcodes_ProductId` ON `datanex_product_barcodes` (`ProductId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE INDEX `IX_datanex_product_barcodes_SizeId` ON `datanex_product_barcodes` (`SizeId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    CREATE INDEX `IX_datanex_products_BrandId` ON `datanex_products` (`BrandId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240615091822_AddedMySqlTables') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20240615091822_AddedMySqlTables', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240618191243_AddedBaseModelOonConnectorModels') THEN

    ALTER TABLE `connector_wooconnectionsdata` ADD `DateAdded` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240618191243_AddedBaseModelOonConnectorModels') THEN

    ALTER TABLE `connector_wooconnectionsdata` ADD `DateUpdated` datetime(6) NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240618191243_AddedBaseModelOonConnectorModels') THEN

    ALTER TABLE `connector_wooconnectionsdata` ADD `IsActive` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240618191243_AddedBaseModelOonConnectorModels') THEN

    ALTER TABLE `connector_wooconnectionsdata` ADD `IsDeleted` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240618191243_AddedBaseModelOonConnectorModels') THEN

    ALTER TABLE `connector_wooconnectionsdata` ADD `UserAdded` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240618191243_AddedBaseModelOonConnectorModels') THEN

    ALTER TABLE `connector_wooconnectionsdata` ADD `UserUpdated` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240618191243_AddedBaseModelOonConnectorModels') THEN

    ALTER TABLE `connector_parameters` ADD `DateAdded` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240618191243_AddedBaseModelOonConnectorModels') THEN

    ALTER TABLE `connector_parameters` ADD `DateUpdated` datetime(6) NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240618191243_AddedBaseModelOonConnectorModels') THEN

    ALTER TABLE `connector_parameters` ADD `IsActive` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240618191243_AddedBaseModelOonConnectorModels') THEN

    ALTER TABLE `connector_parameters` ADD `IsDeleted` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240618191243_AddedBaseModelOonConnectorModels') THEN

    ALTER TABLE `connector_parameters` ADD `UserAdded` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240618191243_AddedBaseModelOonConnectorModels') THEN

    ALTER TABLE `connector_parameters` ADD `UserUpdated` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240618191243_AddedBaseModelOonConnectorModels') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20240618191243_AddedBaseModelOonConnectorModels', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240622150437_AddedAdditionalCharges') THEN

    CREATE TABLE `datanex_additional_charges` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_additional_charges` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240622150437_AddedAdditionalCharges') THEN

    CREATE TABLE `datanex_document_additional_charges` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `DocumentId` char(36) COLLATE ascii_general_ci NOT NULL,
        `AdditionalChargeId` char(36) COLLATE ascii_general_ci NOT NULL,
        `AdditionalChargeAmount` decimal(65,30) NOT NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_document_additional_charges` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_datanex_document_additional_charges_datanex_additional_charg~` FOREIGN KEY (`AdditionalChargeId`) REFERENCES `datanex_additional_charges` (`Id`) ON DELETE RESTRICT,
        CONSTRAINT `FK_datanex_document_additional_charges_datanex_documents_Docume~` FOREIGN KEY (`DocumentId`) REFERENCES `datanex_documents` (`Id`) ON DELETE RESTRICT
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240622150437_AddedAdditionalCharges') THEN

    CREATE INDEX `IX_datanex_document_additional_charges_AdditionalChargeId` ON `datanex_document_additional_charges` (`AdditionalChargeId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240622150437_AddedAdditionalCharges') THEN

    CREATE INDEX `IX_datanex_document_additional_charges_DocumentId` ON `datanex_document_additional_charges` (`DocumentId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240622150437_AddedAdditionalCharges') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20240622150437_AddedAdditionalCharges', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240624142331_AddedConnectorJob') THEN

    CREATE TABLE `connector_jobs` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
        `Description` varchar(250) CHARACTER SET utf8mb4 NULL,
        `JobType` int NOT NULL,
        `DataSourceId` char(36) COLLATE ascii_general_ci NOT NULL,
        `WooConnectionDataSourceId` char(36) COLLATE ascii_general_ci NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_connector_jobs` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_connector_jobs_connector_wooconnectionsdata_WooConnectionDat~` FOREIGN KEY (`WooConnectionDataSourceId`) REFERENCES `connector_wooconnectionsdata` (`Id`) ON DELETE RESTRICT
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240624142331_AddedConnectorJob') THEN

    CREATE INDEX `IX_connector_jobs_WooConnectionDataSourceId` ON `connector_jobs` (`WooConnectionDataSourceId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240624142331_AddedConnectorJob') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20240624142331_AddedConnectorJob', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240624171057_AddedIconOnConnectorJob') THEN

    ALTER TABLE `connector_jobs` ADD `Icon` longtext CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240624171057_AddedIconOnConnectorJob') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20240624171057_AddedIconOnConnectorJob', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240629132521_AddedWooEntityOnWooConnectionsData') THEN

    ALTER TABLE `connector_wooconnectionsdata` ADD `WooEntity` int NOT NULL DEFAULT 0;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240629132521_AddedWooEntityOnWooConnectionsData') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20240629132521_AddedWooEntityOnWooConnectionsData', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240702203047_AddedWarehouses') THEN

    CREATE TABLE `datanex_warehouses` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Code` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
        `Name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
        `IsDefault` tinyint(1) NOT NULL,
        `CompanyId` char(36) COLLATE ascii_general_ci NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_warehouses` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240702203047_AddedWarehouses') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20240702203047_AddedWarehouses', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703181449_AddedDocumentTypeGroupAndAbbreviation') THEN

    ALTER TABLE `datanex_documenttypes` ADD `Abbreviation` varchar(10) CHARACTER SET utf8mb4 NOT NULL DEFAULT '';

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703181449_AddedDocumentTypeGroupAndAbbreviation') THEN

    ALTER TABLE `datanex_documenttypes` ADD `DocumentTypeGroup` int NOT NULL DEFAULT 0;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703181449_AddedDocumentTypeGroupAndAbbreviation') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20240703181449_AddedDocumentTypeGroupAndAbbreviation', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `datanex_warehouses` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `datanex_statuses` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `datanex_products` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `datanex_product_sizes` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `datanex_product_barcodes` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `datanex_logs` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `datanex_documenttypes` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `datanex_documents` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `datanex_documentproducts` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `datanex_document_additional_charges` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `datanex_customers` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `datanex_brands` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `datanex_additional_charges` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `connector_wooconnectionsdata` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `connector_parameters` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    ALTER TABLE `connector_jobs` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240703183329_AddedIsSeeded') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20240703183329_AddedIsSeeded', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240707121818_AddedSuppliers') THEN

    ALTER TABLE `datanex_documents` ADD `DocumentCode` varchar(20) CHARACTER SET utf8mb4 NOT NULL DEFAULT '';

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240707121818_AddedSuppliers') THEN

    ALTER TABLE `datanex_document_additional_charges` MODIFY COLUMN `AdditionalChargeAmount` decimal(18,2) NOT NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240707121818_AddedSuppliers') THEN

    CREATE TABLE `datanex_suppliers` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `IsSeeded` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Address` longtext CHARACTER SET utf8mb4 NULL,
        `Region` longtext CHARACTER SET utf8mb4 NULL,
        `PostalCode` longtext CHARACTER SET utf8mb4 NULL,
        `City` longtext CHARACTER SET utf8mb4 NULL,
        `Country` longtext CHARACTER SET utf8mb4 NULL,
        `Phone1` bigint NULL,
        `Phone2` bigint NULL,
        `Email` longtext CHARACTER SET utf8mb4 NULL,
        `VatNumber` int NULL,
        `TaxOffice` longtext CHARACTER SET utf8mb4 NULL,
        CONSTRAINT `PK_datanex_suppliers` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240707121818_AddedSuppliers') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20240707121818_AddedSuppliers', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240707170647_AddedVatClasses') THEN

    CREATE TABLE `datanex_vat_classes` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
        `Description` varchar(255) CHARACTER SET utf8mb4 NULL,
        `Abbreviation` varchar(10) CHARACTER SET utf8mb4 NULL,
        `Rate` smallint NOT NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `IsSeeded` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_vat_classes` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240707170647_AddedVatClasses') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20240707170647_AddedVatClasses', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240707175644_AddedVatClassOnProducts') THEN

    ALTER TABLE `datanex_products` RENAME COLUMN `Price` TO `WholesalePrice`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240707175644_AddedVatClassOnProducts') THEN

    ALTER TABLE `datanex_products` ADD `RetailPrice` decimal(18,2) NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240707175644_AddedVatClassOnProducts') THEN

    ALTER TABLE `datanex_products` ADD `VatClassId` char(36) COLLATE ascii_general_ci NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240707175644_AddedVatClassOnProducts') THEN

    ALTER TABLE `datanex_documentproducts` ADD `TotalVatAmount` decimal(18,2) NOT NULL DEFAULT 0.0;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240707175644_AddedVatClassOnProducts') THEN

    ALTER TABLE `datanex_documentproducts` ADD `VatAmount` decimal(18,2) NOT NULL DEFAULT 0.0;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240707175644_AddedVatClassOnProducts') THEN

    CREATE INDEX `IX_datanex_products_VatClassId` ON `datanex_products` (`VatClassId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240707175644_AddedVatClassOnProducts') THEN

    ALTER TABLE `datanex_products` ADD CONSTRAINT `FK_datanex_products_datanex_vat_classes_VatClassId` FOREIGN KEY (`VatClassId`) REFERENCES `datanex_vat_classes` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240707175644_AddedVatClassOnProducts') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20240707175644_AddedVatClassOnProducts', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240714181956_AddedSupplierIdOnDocument') THEN

    ALTER TABLE `datanex_documents` MODIFY COLUMN `CustomerId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240714181956_AddedSupplierIdOnDocument') THEN

    ALTER TABLE `datanex_documents` ADD `SupplierId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240714181956_AddedSupplierIdOnDocument') THEN

    CREATE INDEX `IX_datanex_documents_SupplierId` ON `datanex_documents` (`SupplierId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240714181956_AddedSupplierIdOnDocument') THEN

    ALTER TABLE `datanex_documents` ADD CONSTRAINT `FK_datanex_documents_datanex_suppliers_SupplierId` FOREIGN KEY (`SupplierId`) REFERENCES `datanex_suppliers` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240714181956_AddedSupplierIdOnDocument') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20240714181956_AddedSupplierIdOnDocument', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240926194700_AddedCompanies') THEN

    CREATE TABLE `datanex_companies` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
        `IsDefault` tinyint(1) NOT NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `IsSeeded` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_companies` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240926194700_AddedCompanies') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20240926194700_AddedCompanies', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_warehouses` MODIFY COLUMN `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_warehouses` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_vat_classes` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_vat_classes` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_suppliers` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_suppliers` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_statuses` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_statuses` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_products` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_products` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_product_sizes` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_product_sizes` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_product_barcodes` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_product_barcodes` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_logs` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_logs` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_documenttypes` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_documenttypes` ADD `PersonBalanceAffectBehavior` int NOT NULL DEFAULT 0;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_documenttypes` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_documenttypes` ADD `WareHouseAffectBehavior` int NOT NULL DEFAULT 0;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_documents` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_documents` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_documentproducts` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_documentproducts` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_document_additional_charges` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_document_additional_charges` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_customers` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_customers` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_companies` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_companies` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_brands` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_brands` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_additional_charges` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `datanex_additional_charges` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `connector_wooconnectionsdata` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `connector_wooconnectionsdata` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `connector_parameters` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `connector_parameters` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `connector_jobs` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `connector_jobs` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `AspNetUsers` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    ALTER TABLE `AspNetUsers` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241009201836_AddedSerialNumberAndCodeToAllEntities') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20241009201836_AddedSerialNumberAndCodeToAllEntities', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_vat_classes` ADD `CompanyId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_suppliers` MODIFY COLUMN `Phone2` longtext CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_suppliers` MODIFY COLUMN `Phone1` longtext CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_suppliers` ADD `CompanyId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_statuses` ADD `CompanyId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_products` ADD `CompanyId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_product_sizes` ADD `CompanyId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_logs` ADD `CompanyId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_documenttypes` ADD `CompanyId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_documents` MODIFY COLUMN `ShippingPostalCode` longtext CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_documents` MODIFY COLUMN `ShippingPhone2` longtext CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_documents` MODIFY COLUMN `ShippingPhone1` longtext CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_documents` ADD `CompanyId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_customers` MODIFY COLUMN `Phone2` longtext CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_customers` MODIFY COLUMN `Phone1` longtext CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_customers` ADD `CompanyId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_brands` ADD `CompanyId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_additional_charges` ADD `CompanyId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `connector_wooconnectionsdata` ADD `CompanyId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `connector_jobs` ADD `CompanyId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_datanex_warehouses_CompanyId` ON `datanex_warehouses` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_datanex_vat_classes_CompanyId` ON `datanex_vat_classes` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_datanex_suppliers_CompanyId` ON `datanex_suppliers` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_datanex_statuses_CompanyId` ON `datanex_statuses` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_datanex_products_CompanyId` ON `datanex_products` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_datanex_product_sizes_CompanyId` ON `datanex_product_sizes` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_datanex_logs_CompanyId` ON `datanex_logs` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_datanex_documenttypes_CompanyId` ON `datanex_documenttypes` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_datanex_documents_CompanyId` ON `datanex_documents` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_datanex_customers_CompanyId` ON `datanex_customers` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_datanex_brands_CompanyId` ON `datanex_brands` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_datanex_additional_charges_CompanyId` ON `datanex_additional_charges` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_connector_wooconnectionsdata_CompanyId` ON `connector_wooconnectionsdata` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_connector_parameters_CompanyId` ON `connector_parameters` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_connector_jobs_CompanyId` ON `connector_jobs` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    CREATE INDEX `IX_AspNetUsers_CompanyId` ON `AspNetUsers` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `AspNetUsers` ADD CONSTRAINT `FK_AspNetUsers_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `connector_jobs` ADD CONSTRAINT `FK_connector_jobs_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `connector_parameters` ADD CONSTRAINT `FK_connector_parameters_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `connector_wooconnectionsdata` ADD CONSTRAINT `FK_connector_wooconnectionsdata_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_additional_charges` ADD CONSTRAINT `FK_datanex_additional_charges_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_brands` ADD CONSTRAINT `FK_datanex_brands_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_customers` ADD CONSTRAINT `FK_datanex_customers_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_documents` ADD CONSTRAINT `FK_datanex_documents_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_documenttypes` ADD CONSTRAINT `FK_datanex_documenttypes_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_logs` ADD CONSTRAINT `FK_datanex_logs_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_product_sizes` ADD CONSTRAINT `FK_datanex_product_sizes_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_products` ADD CONSTRAINT `FK_datanex_products_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_statuses` ADD CONSTRAINT `FK_datanex_statuses_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_suppliers` ADD CONSTRAINT `FK_datanex_suppliers_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_vat_classes` ADD CONSTRAINT `FK_datanex_vat_classes_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    ALTER TABLE `datanex_warehouses` ADD CONSTRAINT `FK_datanex_warehouses_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20241019193510_AddedCompanyId') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20241019193510_AddedCompanyId', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    ALTER TABLE `datanex_products` ADD `Barcode` varchar(255) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    ALTER TABLE `datanex_products` ADD `Category1Id` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    ALTER TABLE `datanex_products` ADD `Category2Id` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    ALTER TABLE `datanex_products` ADD `Category3Id` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    ALTER TABLE `AspNetRoles` ADD `Code` varchar(25) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    ALTER TABLE `AspNetRoles` ADD `DateAdded` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    ALTER TABLE `AspNetRoles` ADD `DateUpdated` datetime(6) NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    ALTER TABLE `AspNetRoles` ADD `IsActive` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    ALTER TABLE `AspNetRoles` ADD `IsDeleted` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    ALTER TABLE `AspNetRoles` ADD `IsSeeded` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    ALTER TABLE `AspNetRoles` ADD `SerialNumber` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    ALTER TABLE `AspNetRoles` ADD `UserAdded` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    ALTER TABLE `AspNetRoles` ADD `UserUpdated` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    CREATE TABLE `datanex_categories` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `CategoryType` int NOT NULL,
        `CategoryLevel` tinyint unsigned NOT NULL,
        `CompanyId` char(36) COLLATE ascii_general_ci NULL,
        `SerialNumber` int NULL,
        `Code` varchar(25) CHARACTER SET utf8mb4 NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `IsSeeded` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_categories` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    CREATE TABLE `datanex_general_options` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `LotsEnabled` tinyint(1) NOT NULL,
        `CompanyId` char(36) COLLATE ascii_general_ci NOT NULL,
        `SerialNumber` int NULL,
        `Code` varchar(25) CHARACTER SET utf8mb4 NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `IsSeeded` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_general_options` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_datanex_general_options_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    CREATE TABLE `datanex_lots` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
        `ProductId` char(36) COLLATE ascii_general_ci NOT NULL,
        `Notes` varchar(255) CHARACTER SET utf8mb4 NULL,
        `ProdDate` datetime(6) NULL,
        `ExpDate` datetime(6) NULL,
        `SupplierId` char(36) COLLATE ascii_general_ci NOT NULL,
        `RemainingQty` int NOT NULL,
        `CompanyId` char(36) COLLATE ascii_general_ci NOT NULL,
        `SerialNumber` int NULL,
        `Code` varchar(25) CHARACTER SET utf8mb4 NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `IsSeeded` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_lots` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_datanex_lots_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    CREATE TABLE `datanex_lots_settings` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `LotStrategy` int NOT NULL,
        `LotStrategyApplyField` int NOT NULL,
        `CompanyId` char(36) COLLATE ascii_general_ci NOT NULL,
        `SerialNumber` int NULL,
        `Code` varchar(25) CHARACTER SET utf8mb4 NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `IsSeeded` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_lots_settings` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_datanex_lots_settings_datanex_companies_CompanyId` FOREIGN KEY (`CompanyId`) REFERENCES `datanex_companies` (`Id`) ON DELETE RESTRICT
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    CREATE TABLE `datanex_documentproducts_lots_quantities` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `DocumentProductId` char(36) COLLATE ascii_general_ci NOT NULL,
        `LotId` char(36) COLLATE ascii_general_ci NOT NULL,
        `Quantity` int NOT NULL,
        `SerialNumber` int NULL,
        `Code` varchar(25) CHARACTER SET utf8mb4 NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `IsSeeded` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_documentproducts_lots_quantities` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_datanex_documentproducts_lots_quantities_datanex_documentpro~` FOREIGN KEY (`DocumentProductId`) REFERENCES `datanex_documentproducts` (`Id`) ON DELETE RESTRICT,
        CONSTRAINT `FK_datanex_documentproducts_lots_quantities_datanex_lots_LotId` FOREIGN KEY (`LotId`) REFERENCES `datanex_lots` (`Id`) ON DELETE RESTRICT
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    CREATE INDEX `IX_datanex_documentproducts_lots_quantities_DocumentProductId` ON `datanex_documentproducts_lots_quantities` (`DocumentProductId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    CREATE INDEX `IX_datanex_documentproducts_lots_quantities_LotId` ON `datanex_documentproducts_lots_quantities` (`LotId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    CREATE INDEX `IX_datanex_general_options_CompanyId` ON `datanex_general_options` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    CREATE INDEX `IX_datanex_lots_CompanyId` ON `datanex_lots` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    CREATE INDEX `IX_datanex_lots_settings_CompanyId` ON `datanex_lots_settings` (`CompanyId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250126152901_AddedCategories') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20250126152901_AddedCategories', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250201213008_AddedClients') THEN

    ALTER TABLE `datanex_documents` ADD `VatClassId` char(36) COLLATE ascii_general_ci NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250201213008_AddedClients') THEN

    ALTER TABLE `datanex_companies` ADD `ClientId` char(36) COLLATE ascii_general_ci NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250201213008_AddedClients') THEN

    CREATE TABLE `datanex_clients` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `Address` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `Region` varchar(255) CHARACTER SET utf8mb4 NULL,
        `PostalCode` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
        `City` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
        `Country` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
        `Phone1` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
        `Phone2` varchar(25) CHARACTER SET utf8mb4 NULL,
        `Email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
        `SerialNumber` int NULL,
        `Code` varchar(25) CHARACTER SET utf8mb4 NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `IsSeeded` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_clients` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250201213008_AddedClients') THEN

    CREATE INDEX `IX_datanex_documents_VatClassId` ON `datanex_documents` (`VatClassId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250201213008_AddedClients') THEN

    CREATE INDEX `IX_datanex_companies_ClientId` ON `datanex_companies` (`ClientId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250201213008_AddedClients') THEN

    ALTER TABLE `datanex_companies` ADD CONSTRAINT `FK_datanex_companies_datanex_clients_ClientId` FOREIGN KEY (`ClientId`) REFERENCES `datanex_clients` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250201213008_AddedClients') THEN

    ALTER TABLE `datanex_documents` ADD CONSTRAINT `FK_datanex_documents_datanex_vat_classes_VatClassId` FOREIGN KEY (`VatClassId`) REFERENCES `datanex_vat_classes` (`Id`) ON DELETE RESTRICT;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250201213008_AddedClients') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20250201213008_AddedClients', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

