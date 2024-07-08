using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedVatClassOnProducts : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Price",
                table: "datanex_products",
                newName: "WholesalePrice");

            migrationBuilder.AddColumn<decimal>(
                name: "RetailPrice",
                table: "datanex_products",
                type: "decimal(18,2)",
                precision: 18,
                scale: 2,
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "VatClassId",
                table: "datanex_products",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<decimal>(
                name: "TotalVatAmount",
                table: "datanex_documentproducts",
                type: "decimal(18,2)",
                precision: 18,
                scale: 2,
                nullable: false,
                defaultValue: 0m);

            migrationBuilder.AddColumn<decimal>(
                name: "VatAmount",
                table: "datanex_documentproducts",
                type: "decimal(18,2)",
                precision: 18,
                scale: 2,
                nullable: false,
                defaultValue: 0m);

            migrationBuilder.CreateIndex(
                name: "IX_datanex_products_VatClassId",
                table: "datanex_products",
                column: "VatClassId");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_products_datanex_vat_classes_VatClassId",
                table: "datanex_products",
                column: "VatClassId",
                principalTable: "datanex_vat_classes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_datanex_products_datanex_vat_classes_VatClassId",
                table: "datanex_products");

            migrationBuilder.DropIndex(
                name: "IX_datanex_products_VatClassId",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "RetailPrice",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "VatClassId",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "TotalVatAmount",
                table: "datanex_documentproducts");

            migrationBuilder.DropColumn(
                name: "VatAmount",
                table: "datanex_documentproducts");

            migrationBuilder.RenameColumn(
                name: "WholesalePrice",
                table: "datanex_products",
                newName: "Price");
        }
    }
}
