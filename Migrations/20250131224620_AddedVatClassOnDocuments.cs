using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedVatClassOnDocuments : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<Guid>(
                name: "VatClassId",
                table: "datanex_documents",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.CreateIndex(
                name: "IX_datanex_documents_VatClassId",
                table: "datanex_documents",
                column: "VatClassId");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_datanex_vat_classes_VatClassId",
                table: "datanex_documents",
                column: "VatClassId",
                principalTable: "datanex_vat_classes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_datanex_vat_classes_VatClassId",
                table: "datanex_documents");

            migrationBuilder.DropIndex(
                name: "IX_datanex_documents_VatClassId",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "VatClassId",
                table: "datanex_documents");
        }
    }
}
