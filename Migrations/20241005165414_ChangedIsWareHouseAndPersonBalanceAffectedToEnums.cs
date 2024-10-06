using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class ChangedIsWareHouseAndPersonBalanceAffectedToEnums : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IsPersonBalanceAffected",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "IsWareHouseAffected",
                table: "datanex_documenttypes");

            migrationBuilder.AddColumn<int>(
                name: "PersonBalanceAffectBehavior",
                table: "datanex_documenttypes",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "WareHouseAffectBehavior",
                table: "datanex_documenttypes",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "PersonBalanceAffectBehavior",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "WareHouseAffectBehavior",
                table: "datanex_documenttypes");

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
    }
}
