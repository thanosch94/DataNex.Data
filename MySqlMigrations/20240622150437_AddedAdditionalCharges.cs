using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.MySqlMigrations
{
    /// <inheritdoc />
    public partial class AddedAdditionalCharges : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "datanex_additional_charges",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    Name = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    IsActive = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    IsDeleted = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    DateAdded = table.Column<DateTime>(type: "datetime(6)", nullable: false),
                    UserAdded = table.Column<Guid>(type: "char(36)", nullable: true, collation: "ascii_general_ci"),
                    DateUpdated = table.Column<DateTime>(type: "datetime(6)", nullable: true),
                    UserUpdated = table.Column<Guid>(type: "char(36)", nullable: true, collation: "ascii_general_ci")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datanex_additional_charges", x => x.Id);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "datanex_document_additional_charges",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    DocumentId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    AdditionalChargeId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    AdditionalChargeAmount = table.Column<decimal>(type: "decimal(65,30)", nullable: false),
                    IsActive = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    IsDeleted = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    DateAdded = table.Column<DateTime>(type: "datetime(6)", nullable: false),
                    UserAdded = table.Column<Guid>(type: "char(36)", nullable: true, collation: "ascii_general_ci"),
                    DateUpdated = table.Column<DateTime>(type: "datetime(6)", nullable: true),
                    UserUpdated = table.Column<Guid>(type: "char(36)", nullable: true, collation: "ascii_general_ci")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datanex_document_additional_charges", x => x.Id);
                    table.ForeignKey(
                        name: "FK_datanex_document_additional_charges_datanex_additional_charg~",
                        column: x => x.AdditionalChargeId,
                        principalTable: "datanex_additional_charges",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_datanex_document_additional_charges_datanex_documents_Docume~",
                        column: x => x.DocumentId,
                        principalTable: "datanex_documents",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_document_additional_charges_AdditionalChargeId",
                table: "datanex_document_additional_charges",
                column: "AdditionalChargeId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_document_additional_charges_DocumentId",
                table: "datanex_document_additional_charges",
                column: "DocumentId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "datanex_document_additional_charges");

            migrationBuilder.DropTable(
                name: "datanex_additional_charges");
        }
    }
}
