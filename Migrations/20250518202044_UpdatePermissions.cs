using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class UpdatePermissions : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_dn_permissions_datanex_companies_CompanyId",
                table: "dn_permissions");

            migrationBuilder.DropPrimaryKey(
                name: "PK_dn_permissions",
                table: "dn_permissions");

            migrationBuilder.RenameTable(
                name: "dn_permissions",
                newName: "datanex_permissions");

            migrationBuilder.RenameColumn(
                name: "EntityId",
                table: "datanex_permissions",
                newName: "MasterEntityId");

            migrationBuilder.RenameIndex(
                name: "IX_dn_permissions_CompanyId",
                table: "datanex_permissions",
                newName: "IX_datanex_permissions_CompanyId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_datanex_permissions",
                table: "datanex_permissions",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_permissions_datanex_companies_CompanyId",
                table: "datanex_permissions",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_datanex_permissions_datanex_companies_CompanyId",
                table: "datanex_permissions");

            migrationBuilder.DropPrimaryKey(
                name: "PK_datanex_permissions",
                table: "datanex_permissions");

            migrationBuilder.RenameTable(
                name: "datanex_permissions",
                newName: "dn_permissions");

            migrationBuilder.RenameColumn(
                name: "MasterEntityId",
                table: "dn_permissions",
                newName: "EntityId");

            migrationBuilder.RenameIndex(
                name: "IX_datanex_permissions_CompanyId",
                table: "dn_permissions",
                newName: "IX_dn_permissions_CompanyId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_dn_permissions",
                table: "dn_permissions",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_dn_permissions_datanex_companies_CompanyId",
                table: "dn_permissions",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
