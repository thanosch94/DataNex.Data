using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedDocumentSeries : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "dn_document_series",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Notes = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true),
                    Abbreviation = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    Prefix = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: true),
                    Suffix = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: true),
                    CurrentNumber = table.Column<int>(type: "int", maxLength: 10, nullable: false),
                    AllowManualNumbering = table.Column<bool>(type: "bit", nullable: false),
                    CompanyId = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    DocumentTypeId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    SerialNumber = table.Column<int>(type: "int", nullable: true),
                    Code = table.Column<string>(type: "nvarchar(25)", maxLength: 25, nullable: true),
                    IsActive = table.Column<bool>(type: "bit", nullable: false),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    IsSeeded = table.Column<bool>(type: "bit", nullable: false),
                    DateAdded = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UserAdded = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    DateUpdated = table.Column<DateTime>(type: "datetime2", nullable: true),
                    UserUpdated = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_dn_document_series", x => x.Id);
                    table.ForeignKey(
                        name: "FK_dn_document_series_datanex_companies_CompanyId",
                        column: x => x.CompanyId,
                        principalTable: "datanex_companies",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_dn_document_series_datanex_documenttypes_DocumentTypeId",
                        column: x => x.DocumentTypeId,
                        principalTable: "datanex_documenttypes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_dn_document_series_CompanyId",
                table: "dn_document_series",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_dn_document_series_DocumentTypeId",
                table: "dn_document_series",
                column: "DocumentTypeId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "dn_document_series");
        }
    }
}
