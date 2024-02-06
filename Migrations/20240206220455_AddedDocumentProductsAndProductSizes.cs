using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedDocumentProductsAndProductSizes : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_DocumentTypes_DocumentTypeId",
                table: "datanex_documents");

            migrationBuilder.DropPrimaryKey(
                name: "PK_DocumentTypes",
                table: "DocumentTypes");

            migrationBuilder.RenameTable(
                name: "DocumentTypes",
                newName: "datanex_documenttypes");

            migrationBuilder.AddPrimaryKey(
                name: "PK_datanex_documenttypes",
                table: "datanex_documenttypes",
                column: "Id");

            migrationBuilder.CreateTable(
                name: "datanex_product_sizes",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Abbreviation = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datanex_product_sizes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "datanex_documentproducts",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    DocumentId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ProductId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ProductQuantity = table.Column<int>(type: "int", nullable: false),
                    ProductSizeId = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datanex_documentproducts", x => x.Id);
                    table.ForeignKey(
                        name: "FK_datanex_documentproducts_datanex_documents_DocumentId",
                        column: x => x.DocumentId,
                        principalTable: "datanex_documents",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_datanex_documentproducts_datanex_product_sizes_ProductSizeId",
                        column: x => x.ProductSizeId,
                        principalTable: "datanex_product_sizes",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_datanex_documentproducts_datanex_products_ProductId",
                        column: x => x.ProductId,
                        principalTable: "datanex_products",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_datanex_documentproducts_DocumentId",
                table: "datanex_documentproducts",
                column: "DocumentId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_documentproducts_ProductId",
                table: "datanex_documentproducts",
                column: "ProductId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_documentproducts_ProductSizeId",
                table: "datanex_documentproducts",
                column: "ProductSizeId");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_datanex_documenttypes_DocumentTypeId",
                table: "datanex_documents",
                column: "DocumentTypeId",
                principalTable: "datanex_documenttypes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_datanex_documenttypes_DocumentTypeId",
                table: "datanex_documents");

            migrationBuilder.DropTable(
                name: "datanex_documentproducts");

            migrationBuilder.DropTable(
                name: "datanex_product_sizes");

            migrationBuilder.DropPrimaryKey(
                name: "PK_datanex_documenttypes",
                table: "datanex_documenttypes");

            migrationBuilder.RenameTable(
                name: "datanex_documenttypes",
                newName: "DocumentTypes");

            migrationBuilder.AddPrimaryKey(
                name: "PK_DocumentTypes",
                table: "DocumentTypes",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_DocumentTypes_DocumentTypeId",
                table: "datanex_documents",
                column: "DocumentTypeId",
                principalTable: "DocumentTypes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
