using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedUserPropertiesAndBaseModel : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTime>(
                name: "DateAdded",
                table: "datanex_users",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "DateUpdated",
                table: "datanex_users",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "datanex_users",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "datanex_users",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "PasswordHash",
                table: "datanex_users",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<Guid>(
                name: "UserAdded",
                table: "datanex_users",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<int>(
                name: "UserRole",
                table: "datanex_users",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<Guid>(
                name: "UserUpdated",
                table: "datanex_users",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Username",
                table: "datanex_users",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<DateTime>(
                name: "DateAdded",
                table: "datanex_statuses",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "DateUpdated",
                table: "datanex_statuses",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "datanex_statuses",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "datanex_statuses",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<Guid>(
                name: "UserAdded",
                table: "datanex_statuses",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "UserUpdated",
                table: "datanex_statuses",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "DateAdded",
                table: "datanex_products",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "DateUpdated",
                table: "datanex_products",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "datanex_products",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "datanex_products",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<Guid>(
                name: "UserAdded",
                table: "datanex_products",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "UserUpdated",
                table: "datanex_products",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "DateAdded",
                table: "datanex_product_sizes",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "DateUpdated",
                table: "datanex_product_sizes",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "datanex_product_sizes",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "datanex_product_sizes",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<Guid>(
                name: "UserAdded",
                table: "datanex_product_sizes",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "UserUpdated",
                table: "datanex_product_sizes",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "DateAdded",
                table: "datanex_product_barcodes",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "DateUpdated",
                table: "datanex_product_barcodes",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "datanex_product_barcodes",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "datanex_product_barcodes",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<Guid>(
                name: "UserAdded",
                table: "datanex_product_barcodes",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "UserUpdated",
                table: "datanex_product_barcodes",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "DateAdded",
                table: "datanex_documenttypes",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "DateUpdated",
                table: "datanex_documenttypes",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "datanex_documenttypes",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "datanex_documenttypes",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<Guid>(
                name: "UserAdded",
                table: "datanex_documenttypes",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "UserUpdated",
                table: "datanex_documenttypes",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "DateAdded",
                table: "datanex_documents",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "DateUpdated",
                table: "datanex_documents",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "datanex_documents",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "datanex_documents",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<Guid>(
                name: "UserAdded",
                table: "datanex_documents",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "UserUpdated",
                table: "datanex_documents",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "DateAdded",
                table: "datanex_documentproducts",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "DateUpdated",
                table: "datanex_documentproducts",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "datanex_documentproducts",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "datanex_documentproducts",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<Guid>(
                name: "UserAdded",
                table: "datanex_documentproducts",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "UserUpdated",
                table: "datanex_documentproducts",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "DateAdded",
                table: "datanex_customers",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "DateUpdated",
                table: "datanex_customers",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "datanex_customers",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "datanex_customers",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<Guid>(
                name: "UserAdded",
                table: "datanex_customers",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "UserUpdated",
                table: "datanex_customers",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "DateAdded",
                table: "datanex_brands",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "DateUpdated",
                table: "datanex_brands",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "datanex_brands",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "datanex_brands",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<Guid>(
                name: "UserAdded",
                table: "datanex_brands",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "UserUpdated",
                table: "datanex_brands",
                type: "uniqueidentifier",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DateAdded",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "DateUpdated",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "PasswordHash",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "UserAdded",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "UserRole",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "UserUpdated",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "Username",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "DateAdded",
                table: "datanex_statuses");

            migrationBuilder.DropColumn(
                name: "DateUpdated",
                table: "datanex_statuses");

            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "datanex_statuses");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "datanex_statuses");

            migrationBuilder.DropColumn(
                name: "UserAdded",
                table: "datanex_statuses");

            migrationBuilder.DropColumn(
                name: "UserUpdated",
                table: "datanex_statuses");

            migrationBuilder.DropColumn(
                name: "DateAdded",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "DateUpdated",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "UserAdded",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "UserUpdated",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "DateAdded",
                table: "datanex_product_sizes");

            migrationBuilder.DropColumn(
                name: "DateUpdated",
                table: "datanex_product_sizes");

            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "datanex_product_sizes");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "datanex_product_sizes");

            migrationBuilder.DropColumn(
                name: "UserAdded",
                table: "datanex_product_sizes");

            migrationBuilder.DropColumn(
                name: "UserUpdated",
                table: "datanex_product_sizes");

            migrationBuilder.DropColumn(
                name: "DateAdded",
                table: "datanex_product_barcodes");

            migrationBuilder.DropColumn(
                name: "DateUpdated",
                table: "datanex_product_barcodes");

            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "datanex_product_barcodes");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "datanex_product_barcodes");

            migrationBuilder.DropColumn(
                name: "UserAdded",
                table: "datanex_product_barcodes");

            migrationBuilder.DropColumn(
                name: "UserUpdated",
                table: "datanex_product_barcodes");

            migrationBuilder.DropColumn(
                name: "DateAdded",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "DateUpdated",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "UserAdded",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "UserUpdated",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "DateAdded",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "DateUpdated",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "UserAdded",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "UserUpdated",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "DateAdded",
                table: "datanex_documentproducts");

            migrationBuilder.DropColumn(
                name: "DateUpdated",
                table: "datanex_documentproducts");

            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "datanex_documentproducts");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "datanex_documentproducts");

            migrationBuilder.DropColumn(
                name: "UserAdded",
                table: "datanex_documentproducts");

            migrationBuilder.DropColumn(
                name: "UserUpdated",
                table: "datanex_documentproducts");

            migrationBuilder.DropColumn(
                name: "DateAdded",
                table: "datanex_customers");

            migrationBuilder.DropColumn(
                name: "DateUpdated",
                table: "datanex_customers");

            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "datanex_customers");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "datanex_customers");

            migrationBuilder.DropColumn(
                name: "UserAdded",
                table: "datanex_customers");

            migrationBuilder.DropColumn(
                name: "UserUpdated",
                table: "datanex_customers");

            migrationBuilder.DropColumn(
                name: "DateAdded",
                table: "datanex_brands");

            migrationBuilder.DropColumn(
                name: "DateUpdated",
                table: "datanex_brands");

            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "datanex_brands");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "datanex_brands");

            migrationBuilder.DropColumn(
                name: "UserAdded",
                table: "datanex_brands");

            migrationBuilder.DropColumn(
                name: "UserUpdated",
                table: "datanex_brands");
        }
    }
}
