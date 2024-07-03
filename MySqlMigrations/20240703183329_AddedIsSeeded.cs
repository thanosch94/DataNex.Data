using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.MySqlMigrations
{
    /// <inheritdoc />
    public partial class AddedIsSeeded : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_warehouses",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_statuses",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_products",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_product_sizes",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_product_barcodes",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_logs",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_documenttypes",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_documents",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_documentproducts",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_document_additional_charges",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_customers",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_brands",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_additional_charges",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "connector_wooconnectionsdata",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "connector_parameters",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "connector_jobs",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "datanex_warehouses");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "datanex_statuses");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "datanex_product_sizes");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "datanex_product_barcodes");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "datanex_logs");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "datanex_documentproducts");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "datanex_document_additional_charges");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "datanex_customers");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "datanex_brands");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "datanex_additional_charges");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "connector_wooconnectionsdata");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "connector_parameters");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "connector_jobs");
        }
    }
}
