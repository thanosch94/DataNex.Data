using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedPricePropertiesOnDocumentProduct : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "ProductQuantity",
                table: "datanex_documentproducts",
                newName: "Quantity");

            migrationBuilder.AddColumn<decimal>(
                name: "Price",
                table: "datanex_documentproducts",
                type: "decimal(18,2)",
                precision: 18,
                scale: 2,
                nullable: false,
                defaultValue: 0m);

            migrationBuilder.AddColumn<decimal>(
                name: "TotalPrice",
                table: "datanex_documentproducts",
                type: "decimal(18,2)",
                precision: 18,
                scale: 2,
                nullable: false,
                defaultValue: 0m);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Price",
                table: "datanex_documentproducts");

            migrationBuilder.DropColumn(
                name: "TotalPrice",
                table: "datanex_documentproducts");

            migrationBuilder.RenameColumn(
                name: "Quantity",
                table: "datanex_documentproducts",
                newName: "ProductQuantity");
        }
    }
}
