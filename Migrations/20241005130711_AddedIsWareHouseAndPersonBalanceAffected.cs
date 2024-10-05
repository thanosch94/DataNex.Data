using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedIsWareHouseAndPersonBalanceAffected : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "IsPersonBalanceAffected",
                table: "datanex_documenttypes",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsWareHouseAffected",
                table: "datanex_documenttypes",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IsPersonBalanceAffected",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "IsWareHouseAffected",
                table: "datanex_documenttypes");
        }
    }
}
