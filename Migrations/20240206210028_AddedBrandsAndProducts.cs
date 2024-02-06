using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedBrandsAndProducts : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_DocumentType_DocumentTypeId",
                table: "datanex_documents");

            migrationBuilder.DropPrimaryKey(
                name: "PK_DocumentType",
                table: "DocumentType");

            migrationBuilder.RenameTable(
                name: "DocumentType",
                newName: "DocumentTypes");

            migrationBuilder.AddPrimaryKey(
                name: "PK_DocumentTypes",
                table: "DocumentTypes",
                column: "Id");

            migrationBuilder.CreateTable(
                name: "datanex_brands",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datanex_brands", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "datanex_products",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Sku = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Name = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: false),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Image = table.Column<byte[]>(type: "varbinary(max)", nullable: true),
                    Price = table.Column<decimal>(type: "decimal(18,2)", precision: 18, scale: 2, nullable: true),
                    BrandId = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datanex_products", x => x.Id);
                    table.ForeignKey(
                        name: "FK_datanex_products_datanex_brands_BrandId",
                        column: x => x.BrandId,
                        principalTable: "datanex_brands",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateIndex(
                name: "IX_datanex_products_BrandId",
                table: "datanex_products",
                column: "BrandId");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_DocumentTypes_DocumentTypeId",
                table: "datanex_documents",
                column: "DocumentTypeId",
                principalTable: "DocumentTypes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_DocumentTypes_DocumentTypeId",
                table: "datanex_documents");

            migrationBuilder.DropTable(
                name: "datanex_products");

            migrationBuilder.DropTable(
                name: "datanex_brands");

            migrationBuilder.DropPrimaryKey(
                name: "PK_DocumentTypes",
                table: "DocumentTypes");

            migrationBuilder.RenameTable(
                name: "DocumentTypes",
                newName: "DocumentType");

            migrationBuilder.AddPrimaryKey(
                name: "PK_DocumentType",
                table: "DocumentType",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_DocumentType_DocumentTypeId",
                table: "datanex_documents",
                column: "DocumentTypeId",
                principalTable: "DocumentType",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
