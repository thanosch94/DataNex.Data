using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedConfigPropertiesOnDocTypes : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "AutoIncrementCodeEnabled",
                table: "datanex_documenttypes",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<Guid>(
                name: "CancellationDocTypeId",
                table: "datanex_documenttypes",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "UsesPrices",
                table: "datanex_documenttypes",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "AutoIncrementCodeEnabled",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "CancellationDocTypeId",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "UsesPrices",
                table: "datanex_documenttypes");
        }
    }
}
