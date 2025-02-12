using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedCompanyData : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_datanex_companies_datanex_clients_ClientId",
                table: "datanex_companies");

            migrationBuilder.DropTable(
                name: "datanex_clients");

            migrationBuilder.DropIndex(
                name: "IX_datanex_companies_ClientId",
                table: "datanex_companies");

            migrationBuilder.AddColumn<string>(
                name: "Address",
                table: "datanex_companies",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "City",
                table: "datanex_companies",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Country",
                table: "datanex_companies",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Email",
                table: "datanex_companies",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Phone1",
                table: "datanex_companies",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Phone2",
                table: "datanex_companies",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "PostalCode",
                table: "datanex_companies",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Region",
                table: "datanex_companies",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "TaxOffice",
                table: "datanex_companies",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "VatNumber",
                table: "datanex_companies",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Address",
                table: "datanex_companies");

            migrationBuilder.DropColumn(
                name: "City",
                table: "datanex_companies");

            migrationBuilder.DropColumn(
                name: "Country",
                table: "datanex_companies");

            migrationBuilder.DropColumn(
                name: "Email",
                table: "datanex_companies");

            migrationBuilder.DropColumn(
                name: "Phone1",
                table: "datanex_companies");

            migrationBuilder.DropColumn(
                name: "Phone2",
                table: "datanex_companies");

            migrationBuilder.DropColumn(
                name: "PostalCode",
                table: "datanex_companies");

            migrationBuilder.DropColumn(
                name: "Region",
                table: "datanex_companies");

            migrationBuilder.DropColumn(
                name: "TaxOffice",
                table: "datanex_companies");

            migrationBuilder.DropColumn(
                name: "VatNumber",
                table: "datanex_companies");

            migrationBuilder.CreateTable(
                name: "datanex_clients",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Address = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: false),
                    City = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    Code = table.Column<string>(type: "nvarchar(25)", maxLength: 25, nullable: true),
                    Country = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    DateAdded = table.Column<DateTime>(type: "datetime2", nullable: false),
                    DateUpdated = table.Column<DateTime>(type: "datetime2", nullable: true),
                    Email = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    IsActive = table.Column<bool>(type: "bit", nullable: false),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    IsSeeded = table.Column<bool>(type: "bit", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: false),
                    Phone1 = table.Column<string>(type: "nvarchar(25)", maxLength: 25, nullable: false),
                    Phone2 = table.Column<string>(type: "nvarchar(25)", maxLength: 25, nullable: true),
                    PostalCode = table.Column<string>(type: "nvarchar(15)", maxLength: 15, nullable: false),
                    Region = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true),
                    SerialNumber = table.Column<int>(type: "int", nullable: true),
                    UserAdded = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    UserUpdated = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datanex_clients", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_datanex_companies_ClientId",
                table: "datanex_companies",
                column: "ClientId");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_companies_datanex_clients_ClientId",
                table: "datanex_companies",
                column: "ClientId",
                principalTable: "datanex_clients",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
