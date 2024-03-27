using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class ChangedImageToImagePath : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Image",
                table: "datanex_products");

            migrationBuilder.AddColumn<string>(
                name: "ImagePath",
                table: "datanex_products",
                type: "nvarchar(max)",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ImagePath",
                table: "datanex_products");

            migrationBuilder.AddColumn<byte[]>(
                name: "Image",
                table: "datanex_products",
                type: "varbinary(max)",
                nullable: true);
        }
    }
}
