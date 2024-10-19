using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedCompanyId : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<Guid>(
                name: "CompanyId",
                table: "datanex_vat_classes",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "CompanyId",
                table: "datanex_suppliers",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "CompanyId",
                table: "datanex_statuses",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "CompanyId",
                table: "datanex_products",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "CompanyId",
                table: "datanex_logs",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "CompanyId",
                table: "datanex_documenttypes",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "CompanyId",
                table: "datanex_documents",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "CompanyId",
                table: "datanex_customers",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "CompanyId",
                table: "datanex_brands",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "CompanyId",
                table: "datanex_additional_charges",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "CompanyId",
                table: "connector_wooconnectionsdata",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "CompanyId",
                table: "connector_jobs",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_datanex_warehouses_CompanyId",
                table: "datanex_warehouses",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_vat_classes_CompanyId",
                table: "datanex_vat_classes",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_suppliers_CompanyId",
                table: "datanex_suppliers",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_statuses_CompanyId",
                table: "datanex_statuses",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_products_CompanyId",
                table: "datanex_products",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_logs_CompanyId",
                table: "datanex_logs",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_documenttypes_CompanyId",
                table: "datanex_documenttypes",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_documents_CompanyId",
                table: "datanex_documents",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_customers_CompanyId",
                table: "datanex_customers",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_brands_CompanyId",
                table: "datanex_brands",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_additional_charges_CompanyId",
                table: "datanex_additional_charges",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_connector_wooconnectionsdata_CompanyId",
                table: "connector_wooconnectionsdata",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_connector_parameters_CompanyId",
                table: "connector_parameters",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_connector_jobs_CompanyId",
                table: "connector_jobs",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUsers_CompanyId",
                table: "AspNetUsers",
                column: "CompanyId");

            migrationBuilder.AddForeignKey(
                name: "FK_AspNetUsers_datanex_companies_CompanyId",
                table: "AspNetUsers",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_connector_jobs_datanex_companies_CompanyId",
                table: "connector_jobs",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_connector_parameters_datanex_companies_CompanyId",
                table: "connector_parameters",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_connector_wooconnectionsdata_datanex_companies_CompanyId",
                table: "connector_wooconnectionsdata",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_additional_charges_datanex_companies_CompanyId",
                table: "datanex_additional_charges",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_brands_datanex_companies_CompanyId",
                table: "datanex_brands",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_customers_datanex_companies_CompanyId",
                table: "datanex_customers",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_datanex_companies_CompanyId",
                table: "datanex_documents",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documenttypes_datanex_companies_CompanyId",
                table: "datanex_documenttypes",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_logs_datanex_companies_CompanyId",
                table: "datanex_logs",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_products_datanex_companies_CompanyId",
                table: "datanex_products",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_statuses_datanex_companies_CompanyId",
                table: "datanex_statuses",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_suppliers_datanex_companies_CompanyId",
                table: "datanex_suppliers",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_vat_classes_datanex_companies_CompanyId",
                table: "datanex_vat_classes",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_warehouses_datanex_companies_CompanyId",
                table: "datanex_warehouses",
                column: "CompanyId",
                principalTable: "datanex_companies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AspNetUsers_datanex_companies_CompanyId",
                table: "AspNetUsers");

            migrationBuilder.DropForeignKey(
                name: "FK_connector_jobs_datanex_companies_CompanyId",
                table: "connector_jobs");

            migrationBuilder.DropForeignKey(
                name: "FK_connector_parameters_datanex_companies_CompanyId",
                table: "connector_parameters");

            migrationBuilder.DropForeignKey(
                name: "FK_connector_wooconnectionsdata_datanex_companies_CompanyId",
                table: "connector_wooconnectionsdata");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_additional_charges_datanex_companies_CompanyId",
                table: "datanex_additional_charges");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_brands_datanex_companies_CompanyId",
                table: "datanex_brands");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_customers_datanex_companies_CompanyId",
                table: "datanex_customers");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_datanex_companies_CompanyId",
                table: "datanex_documents");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documenttypes_datanex_companies_CompanyId",
                table: "datanex_documenttypes");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_logs_datanex_companies_CompanyId",
                table: "datanex_logs");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_products_datanex_companies_CompanyId",
                table: "datanex_products");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_statuses_datanex_companies_CompanyId",
                table: "datanex_statuses");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_suppliers_datanex_companies_CompanyId",
                table: "datanex_suppliers");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_vat_classes_datanex_companies_CompanyId",
                table: "datanex_vat_classes");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_warehouses_datanex_companies_CompanyId",
                table: "datanex_warehouses");

            migrationBuilder.DropIndex(
                name: "IX_datanex_warehouses_CompanyId",
                table: "datanex_warehouses");

            migrationBuilder.DropIndex(
                name: "IX_datanex_vat_classes_CompanyId",
                table: "datanex_vat_classes");

            migrationBuilder.DropIndex(
                name: "IX_datanex_suppliers_CompanyId",
                table: "datanex_suppliers");

            migrationBuilder.DropIndex(
                name: "IX_datanex_statuses_CompanyId",
                table: "datanex_statuses");

            migrationBuilder.DropIndex(
                name: "IX_datanex_products_CompanyId",
                table: "datanex_products");

            migrationBuilder.DropIndex(
                name: "IX_datanex_logs_CompanyId",
                table: "datanex_logs");

            migrationBuilder.DropIndex(
                name: "IX_datanex_documenttypes_CompanyId",
                table: "datanex_documenttypes");

            migrationBuilder.DropIndex(
                name: "IX_datanex_documents_CompanyId",
                table: "datanex_documents");

            migrationBuilder.DropIndex(
                name: "IX_datanex_customers_CompanyId",
                table: "datanex_customers");

            migrationBuilder.DropIndex(
                name: "IX_datanex_brands_CompanyId",
                table: "datanex_brands");

            migrationBuilder.DropIndex(
                name: "IX_datanex_additional_charges_CompanyId",
                table: "datanex_additional_charges");

            migrationBuilder.DropIndex(
                name: "IX_connector_wooconnectionsdata_CompanyId",
                table: "connector_wooconnectionsdata");

            migrationBuilder.DropIndex(
                name: "IX_connector_parameters_CompanyId",
                table: "connector_parameters");

            migrationBuilder.DropIndex(
                name: "IX_connector_jobs_CompanyId",
                table: "connector_jobs");

            migrationBuilder.DropIndex(
                name: "IX_AspNetUsers_CompanyId",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "CompanyId",
                table: "datanex_vat_classes");

            migrationBuilder.DropColumn(
                name: "CompanyId",
                table: "datanex_suppliers");

            migrationBuilder.DropColumn(
                name: "CompanyId",
                table: "datanex_statuses");

            migrationBuilder.DropColumn(
                name: "CompanyId",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "CompanyId",
                table: "datanex_logs");

            migrationBuilder.DropColumn(
                name: "CompanyId",
                table: "datanex_documenttypes");

            migrationBuilder.DropColumn(
                name: "CompanyId",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "CompanyId",
                table: "datanex_customers");

            migrationBuilder.DropColumn(
                name: "CompanyId",
                table: "datanex_brands");

            migrationBuilder.DropColumn(
                name: "CompanyId",
                table: "datanex_additional_charges");

            migrationBuilder.DropColumn(
                name: "CompanyId",
                table: "connector_wooconnectionsdata");

            migrationBuilder.DropColumn(
                name: "CompanyId",
                table: "connector_jobs");
        }
    }
}
