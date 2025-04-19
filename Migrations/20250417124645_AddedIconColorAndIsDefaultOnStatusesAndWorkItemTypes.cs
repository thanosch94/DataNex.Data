using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedIconColorAndIsDefaultOnStatusesAndWorkItemTypes : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "IconColor",
                table: "datanex_workitem_types",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsDefault",
                table: "datanex_workitem_types",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "IconColor",
                table: "datanex_statuses",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsDefault",
                table: "datanex_statuses",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IconColor",
                table: "datanex_workitem_types");

            migrationBuilder.DropColumn(
                name: "IsDefault",
                table: "datanex_workitem_types");

            migrationBuilder.DropColumn(
                name: "IconColor",
                table: "datanex_statuses");

            migrationBuilder.DropColumn(
                name: "IsDefault",
                table: "datanex_statuses");
        }
    }
}
