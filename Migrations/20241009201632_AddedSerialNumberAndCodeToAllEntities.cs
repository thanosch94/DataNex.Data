using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedSerialNumberAndCodeToAllEntities : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "Code",
                table: "datanex_warehouses",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(10)",
                oldMaxLength: 10);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_warehouses",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "datanex_vat_classes",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_vat_classes",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "datanex_suppliers",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_suppliers",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "datanex_statuses",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_statuses",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "datanex_products",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_products",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "datanex_product_sizes",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_product_sizes",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "datanex_product_barcodes",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_product_barcodes",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "datanex_logs",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_logs",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "datanex_documenttypes",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_documenttypes",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "datanex_documents",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_documents",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "datanex_documentproducts",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_documentproducts",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "datanex_document_additional_charges",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_document_additional_charges",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "datanex_customers",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_customers",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "datanex_companies",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_companies",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "datanex_brands",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_brands",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "datanex_additional_charges",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "datanex_additional_charges",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "connector_wooconnectionsdata",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "connector_wooconnectionsdata",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "connector_parameters",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "connector_parameters",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "connector_jobs",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "connector_jobs",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "AspNetUsers",
                type: "nvarchar(25)",
                maxLength: 25,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "AspNetUsers",
                type: "int",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_warehouses");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "datanex_vat_classes");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_vat_classes");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "datanex_suppliers");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_suppliers");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "datanex_statuses");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_statuses");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "datanex_product_sizes");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_product_sizes");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "datanex_product_barcodes");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_product_barcodes");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "datanex_logs");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_logs");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "datanex_documentproducts");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_documentproducts");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "datanex_document_additional_charges");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_document_additional_charges");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "datanex_customers");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_customers");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "datanex_companies");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_companies");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "datanex_brands");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_brands");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "datanex_additional_charges");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "datanex_additional_charges");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "connector_wooconnectionsdata");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "connector_wooconnectionsdata");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "connector_parameters");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "connector_parameters");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "connector_jobs");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "connector_jobs");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "AspNetUsers");

            migrationBuilder.AlterColumn<string>(
                name: "Code",
                table: "datanex_warehouses",
                type: "nvarchar(10)",
                maxLength: 10,
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(25)",
                oldMaxLength: 25,
                oldNullable: true);
        }
    }
}
