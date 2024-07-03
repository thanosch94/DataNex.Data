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

