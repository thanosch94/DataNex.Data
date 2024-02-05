using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedDocumentShippingDetails : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTimeOffset>(
                name: "DocumentDateTime",
                table: "datanex_documents",
                type: "datetimeoffset",
                nullable: false,
                defaultValue: new DateTimeOffset(new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), new TimeSpan(0, 0, 0, 0, 0)));

            migrationBuilder.AddColumn<Guid>(
                name: "DocumentStatusId",
                table: "datanex_documents",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "ShippingAddress",
                table: "datanex_documents",
                type: "nvarchar(255)",
                maxLength: 255,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "ShippingCity",
                table: "datanex_documents",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "ShippingCountry",
                table: "datanex_documents",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "ShippingEmail",
                table: "datanex_documents",
                type: "nvarchar(255)",
                maxLength: 255,
                nullable: true);

            migrationBuilder.AddColumn<long>(
                name: "ShippingPhone1",
                table: "datanex_documents",
                type: "bigint",
                nullable: true);

            migrationBuilder.AddColumn<long>(
                name: "ShippingPhone2",
                table: "datanex_documents",
                type: "bigint",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "ShippingPostalCode",
                table: "datanex_documents",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "ShippingRegion",
                table: "datanex_documents",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: true);

            migrationBuilder.CreateTable(
                name: "datanex_statuses",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datanex_statuses", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_datanex_documents_DocumentStatusId",
                table: "datanex_documents",
                column: "DocumentStatusId");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_datanex_statuses_DocumentStatusId",
                table: "datanex_documents",
                column: "DocumentStatusId",
                principalTable: "datanex_statuses",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_datanex_statuses_DocumentStatusId",
                table: "datanex_documents");

            migrationBuilder.DropTable(
                name: "datanex_statuses");

            migrationBuilder.DropIndex(
                name: "IX_datanex_documents_DocumentStatusId",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "DocumentDateTime",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "DocumentStatusId",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "ShippingAddress",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "ShippingCity",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "ShippingCountry",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "ShippingEmail",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "ShippingPhone1",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "ShippingPhone2",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "ShippingPostalCode",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "ShippingRegion",
                table: "datanex_documents");
        }
    }
}
