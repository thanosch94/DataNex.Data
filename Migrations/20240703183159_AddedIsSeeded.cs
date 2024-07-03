using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
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
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_statuses",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_products",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_product_sizes",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_product_barcodes",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_logs",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_documenttypes",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_documents",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_documentproducts",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_document_additional_charges",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_customers",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_brands",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "datanex_additional_charges",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "connector_wooconnectionsdata",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "connector_parameters",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "connector_jobs",
                type: "bit",
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
