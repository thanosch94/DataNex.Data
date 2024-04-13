using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class DisableCascadeDelete : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documentproducts_datanex_documents_DocumentId",
                table: "datanex_documentproducts");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documentproducts_datanex_product_sizes_ProductSizeId",
                table: "datanex_documentproducts");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documentproducts_datanex_products_ProductId",
                table: "datanex_documentproducts");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_datanex_customers_CustomerId",
                table: "datanex_documents");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_datanex_documenttypes_DocumentTypeId",
                table: "datanex_documents");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_datanex_statuses_DocumentStatusId",
                table: "datanex_documents");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_product_barcodes_datanex_product_sizes_SizeId",
                table: "datanex_product_barcodes");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_product_barcodes_datanex_products_ProductId",
                table: "datanex_product_barcodes");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_products_datanex_brands_BrandId",
                table: "datanex_products");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documentproducts_datanex_documents_DocumentId",
                table: "datanex_documentproducts",
                column: "DocumentId",
                principalTable: "datanex_documents",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documentproducts_datanex_product_sizes_ProductSizeId",
                table: "datanex_documentproducts",
                column: "ProductSizeId",
                principalTable: "datanex_product_sizes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documentproducts_datanex_products_ProductId",
                table: "datanex_documentproducts",
                column: "ProductId",
                principalTable: "datanex_products",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_datanex_customers_CustomerId",
                table: "datanex_documents",
                column: "CustomerId",
                principalTable: "datanex_customers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_datanex_documenttypes_DocumentTypeId",
                table: "datanex_documents",
                column: "DocumentTypeId",
                principalTable: "datanex_documenttypes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_datanex_statuses_DocumentStatusId",
                table: "datanex_documents",
                column: "DocumentStatusId",
                principalTable: "datanex_statuses",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_product_barcodes_datanex_product_sizes_SizeId",
                table: "datanex_product_barcodes",
                column: "SizeId",
                principalTable: "datanex_product_sizes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_product_barcodes_datanex_products_ProductId",
                table: "datanex_product_barcodes",
                column: "ProductId",
                principalTable: "datanex_products",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_products_datanex_brands_BrandId",
                table: "datanex_products",
                column: "BrandId",
                principalTable: "datanex_brands",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documentproducts_datanex_documents_DocumentId",
                table: "datanex_documentproducts");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documentproducts_datanex_product_sizes_ProductSizeId",
                table: "datanex_documentproducts");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documentproducts_datanex_products_ProductId",
                table: "datanex_documentproducts");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_datanex_customers_CustomerId",
                table: "datanex_documents");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_datanex_documenttypes_DocumentTypeId",
                table: "datanex_documents");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_datanex_statuses_DocumentStatusId",
                table: "datanex_documents");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_product_barcodes_datanex_product_sizes_SizeId",
                table: "datanex_product_barcodes");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_product_barcodes_datanex_products_ProductId",
                table: "datanex_product_barcodes");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_products_datanex_brands_BrandId",
                table: "datanex_products");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documentproducts_datanex_documents_DocumentId",
                table: "datanex_documentproducts",
                column: "DocumentId",
                principalTable: "datanex_documents",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documentproducts_datanex_product_sizes_ProductSizeId",
                table: "datanex_documentproducts",
                column: "ProductSizeId",
                principalTable: "datanex_product_sizes",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documentproducts_datanex_products_ProductId",
                table: "datanex_documentproducts",
                column: "ProductId",
                principalTable: "datanex_products",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_datanex_customers_CustomerId",
                table: "datanex_documents",
                column: "CustomerId",
                principalTable: "datanex_customers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_datanex_documenttypes_DocumentTypeId",
                table: "datanex_documents",
                column: "DocumentTypeId",
                principalTable: "datanex_documenttypes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_datanex_statuses_DocumentStatusId",
                table: "datanex_documents",
                column: "DocumentStatusId",
                principalTable: "datanex_statuses",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_product_barcodes_datanex_product_sizes_SizeId",
                table: "datanex_product_barcodes",
                column: "SizeId",
                principalTable: "datanex_product_sizes",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_product_barcodes_datanex_products_ProductId",
                table: "datanex_product_barcodes",
                column: "ProductId",
                principalTable: "datanex_products",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_products_datanex_brands_BrandId",
                table: "datanex_products",
                column: "BrandId",
                principalTable: "datanex_brands",
                principalColumn: "Id");
        }
    }
}
