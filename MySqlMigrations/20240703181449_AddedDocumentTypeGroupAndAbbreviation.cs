using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.MySqlMigrations
{
    /// <inheritdoc />
    public partial class AddedDocumentTypeGroupAndAbbreviation : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Abbreviation",
                table: "datanex_documenttypes",
                type: "varchar(10)",
                maxLength: 10,
                nullable: false,
                defaultValue: "")
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AddColumn<int>(
                name: "DocumentTypeGroup",
                table: "datanex_documenttypes",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Abbreviation",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "DocumentTypeGroup",
                table: "datanex_documenttypes");
        }
    }
}
