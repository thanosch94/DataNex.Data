using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.MySqlMigrations
{
    /// <inheritdoc />
    public partial class AddedBaseModelOonConnectorModels : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTime>(
                name: "DateAdded",
                table: "connector_wooconnectionsdata",
                type: "datetime(6)",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "DateUpdated",
                table: "connector_wooconnectionsdata",
                type: "datetime(6)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "connector_wooconnectionsdata",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "connector_wooconnectionsdata",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<Guid>(
                name: "UserAdded",
                table: "connector_wooconnectionsdata",
                type: "char(36)",
                nullable: true,
                collation: "ascii_general_ci");

            migrationBuilder.AddColumn<Guid>(
                name: "UserUpdated",
                table: "connector_wooconnectionsdata",
                type: "char(36)",
                nullable: true,
                collation: "ascii_general_ci");

            migrationBuilder.AddColumn<DateTime>(
                name: "DateAdded",
                table: "connector_parameters",
                type: "datetime(6)",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "DateUpdated",
                table: "connector_parameters",
                type: "datetime(6)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "connector_parameters",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "connector_parameters",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<Guid>(
                name: "UserAdded",
                table: "connector_parameters",
                type: "char(36)",
                nullable: true,
                collation: "ascii_general_ci");

            migrationBuilder.AddColumn<Guid>(
                name: "UserUpdated",
                table: "connector_parameters",
                type: "char(36)",
                nullable: true,
                collation: "ascii_general_ci");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DateAdded",
                table: "connector_wooconnectionsdata");

            migrationBuilder.DropColumn(
                name: "DateUpdated",
                table: "connector_wooconnectionsdata");

            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "connector_wooconnectionsdata");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "connector_wooconnectionsdata");

            migrationBuilder.DropColumn(
                name: "UserAdded",
                table: "connector_wooconnectionsdata");

            migrationBuilder.DropColumn(
                name: "UserUpdated",
                table: "connector_wooconnectionsdata");

            migrationBuilder.DropColumn(
                name: "DateAdded",
                table: "connector_parameters");

            migrationBuilder.DropColumn(
                name: "DateUpdated",
                table: "connector_parameters");

            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "connector_parameters");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "connector_parameters");

            migrationBuilder.DropColumn(
                name: "UserAdded",
                table: "connector_parameters");

            migrationBuilder.DropColumn(
                name: "UserUpdated",
                table: "connector_parameters");
        }
    }
}
