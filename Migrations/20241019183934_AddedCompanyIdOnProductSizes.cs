using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedCompanyIdOnProductSizes : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<Guid>(
                name: "CompanyId",
                table: "datanex_product_sizes",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_datanex_product_sizes_CompanyId",
                table: "datanex_product_sizes",
                column: "CompanyId");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_product_sizes_datanex_companies_CompanyId",
                table: "datanex_product_sizes",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_datanex_product_sizes_datanex_companies_CompanyId",
                table: "datanex_product_sizes");

            migrationBuilder.DropIndex(
                name: "IX_datanex_product_sizes_CompanyId",
                table: "datanex_product_sizes");

            migrationBuilder.DropColumn(
                name: "CompanyId",
                table: "datanex_product_sizes");
        }
    }
}
