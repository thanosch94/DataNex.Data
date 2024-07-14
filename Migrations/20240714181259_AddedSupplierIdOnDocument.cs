using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedSupplierIdOnDocument : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<Guid>(
                name: "CustomerId",
                table: "datanex_documents",
                type: "uniqueidentifier",
                nullable: true,
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier");

            migrationBuilder.AddColumn<Guid>(
                name: "SupplierId",
                table: "datanex_documents",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_datanex_documents_SupplierId",
                table: "datanex_documents",
                column: "SupplierId");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_datanex_suppliers_SupplierId",
                table: "datanex_documents",
                column: "SupplierId",
                principalTable: "datanex_suppliers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_datanex_suppliers_SupplierId",
                table: "datanex_documents");

            migrationBuilder.DropIndex(
                name: "IX_datanex_documents_SupplierId",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "SupplierId",
                table: "datanex_documents");

            migrationBuilder.AlterColumn<Guid>(
                name: "CustomerId",
                table: "datanex_documents",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"),
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier",
                oldNullable: true);
        }
    }
}
