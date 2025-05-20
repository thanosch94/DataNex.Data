using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedWarehouseOnDocuments : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "AppEntity",
                table: "dn_permissions",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<Guid>(
                name: "EntityId",
                table: "dn_permissions",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "WarehouseId",
                table: "datanex_documents",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_datanex_documents_WarehouseId",
                table: "datanex_documents",
                column: "WarehouseId");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_datanex_warehouses_WarehouseId",
                table: "datanex_documents",
                column: "WarehouseId",
                principalTable: "datanex_warehouses",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_datanex_warehouses_WarehouseId",
                table: "datanex_documents");

            migrationBuilder.DropIndex(
                name: "IX_datanex_documents_WarehouseId",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "AppEntity",
                table: "dn_permissions");

            migrationBuilder.DropColumn(
                name: "EntityId",
                table: "dn_permissions");

            migrationBuilder.DropColumn(
                name: "WarehouseId",
                table: "datanex_documents");
        }
    }
}
