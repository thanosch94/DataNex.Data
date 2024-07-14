using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.MySqlMigrations
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
                type: "char(36)",
                nullable: true,
                collation: "ascii_general_ci",
                oldClrType: typeof(Guid),
                oldType: "char(36)")
                .OldAnnotation("Relational:Collation", "ascii_general_ci");

            migrationBuilder.AddColumn<Guid>(
                name: "SupplierId",
                table: "datanex_documents",
                type: "char(36)",
                nullable: true,
                collation: "ascii_general_ci");

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
                type: "char(36)",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"),
                collation: "ascii_general_ci",
                oldClrType: typeof(Guid),
                oldType: "char(36)",
                oldNullable: true)
                .OldAnnotation("Relational:Collation", "ascii_general_ci");
        }
    }
}
