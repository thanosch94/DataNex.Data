using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedProductBarcode : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "datanex_product_barcodes",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ProductId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    SizeId = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    Barcode = table.Column<long>(type: "bigint", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datanex_product_barcodes", x => x.Id);
                    table.ForeignKey(
                        name: "FK_datanex_product_barcodes_datanex_product_sizes_SizeId",
                        column: x => x.SizeId,
                        principalTable: "datanex_product_sizes",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_datanex_product_barcodes_datanex_products_ProductId",
                        column: x => x.ProductId,
                        principalTable: "datanex_products",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_datanex_product_barcodes_ProductId",
                table: "datanex_product_barcodes",
                column: "ProductId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_product_barcodes_SizeId",
                table: "datanex_product_barcodes",
                column: "SizeId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "datanex_product_barcodes");
        }
    }
}
