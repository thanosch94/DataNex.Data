﻿CREATE TABLE IF NOT EXISTS `__EFMigrationsHistory` (
    `MigrationId` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
    `ProductVersion` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK___EFMigrationsHistory` PRIMARY KEY (`MigrationId`)
) CHARACTER SET=utf8mb4;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

    CREATE TABLE `datanex_brands` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NOT NULL,
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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

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
        `UserAdded` char(36) COLLATE ascii_general_ci NOT NULL,
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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

    CREATE TABLE `datanex_documenttypes` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
        `Description` varchar(50) CHARACTER SET utf8mb4 NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NOT NULL,
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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

    CREATE TABLE `datanex_product_sizes` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
        `Abbreviation` varchar(10) CHARACTER SET utf8mb4 NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NOT NULL,
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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

    CREATE TABLE `datanex_statuses` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NOT NULL,
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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

    CREATE TABLE `datanex_users` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Email` longtext CHARACTER SET utf8mb4 NULL,
        `Username` longtext CHARACTER SET utf8mb4 NOT NULL,
        `PasswordHash` longtext CHARACTER SET utf8mb4 NOT NULL,
        `UserRole` int NOT NULL,
        `CompanyId` char(36) COLLATE ascii_general_ci NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NOT NULL,
        `DateUpdated` datetime(6) NULL,
        `UserUpdated` char(36) COLLATE ascii_general_ci NULL,
        CONSTRAINT `PK_datanex_users` PRIMARY KEY (`Id`)
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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

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
        `UserAdded` char(36) COLLATE ascii_general_ci NOT NULL,
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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

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
        `UserAdded` char(36) COLLATE ascii_general_ci NOT NULL,
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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

    CREATE TABLE `datanex_product_barcodes` (
        `Id` char(36) COLLATE ascii_general_ci NOT NULL,
        `ProductId` char(36) COLLATE ascii_general_ci NOT NULL,
        `SizeId` char(36) COLLATE ascii_general_ci NULL,
        `Barcode` varchar(255) CHARACTER SET utf8mb4 NULL,
        `IsActive` tinyint(1) NOT NULL,
        `IsDeleted` tinyint(1) NOT NULL,
        `DateAdded` datetime(6) NOT NULL,
        `UserAdded` char(36) COLLATE ascii_general_ci NOT NULL,
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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

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
        `UserAdded` char(36) COLLATE ascii_general_ci NOT NULL,
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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

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
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20240505231520_AddPreviousMigrations') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20240505231520_AddPreviousMigrations', '8.0.1');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;
