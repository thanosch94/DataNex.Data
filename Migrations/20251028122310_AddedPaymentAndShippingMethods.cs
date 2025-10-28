using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedPaymentAndShippingMethods : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<Guid>(
                name: "DocumentSeriesId",
                table: "datanex_documents",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "PaymentMethodId",
                table: "datanex_documents",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "ShippingMethodId",
                table: "datanex_documents",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "dn_payment_methods",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Notes = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true),
                    CompanyId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    SerialNumber = table.Column<int>(type: "int", nullable: true),
                    Code = table.Column<string>(type: "nvarchar(25)", maxLength: 25, nullable: true),
                    IsActive = table.Column<bool>(type: "bit", nullable: false),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    IsSeeded = table.Column<bool>(type: "bit", nullable: false),
                    DateAdded = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UserAdded = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    DateUpdated = table.Column<DateTime>(type: "datetime2", nullable: true),
                    UserUpdated = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_dn_payment_methods", x => x.Id);
                    table.ForeignKey(
                        name: "FK_dn_payment_methods_datanex_companies_CompanyId",
                        column: x => x.CompanyId,
                        principalTable: "datanex_companies",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "dn_shipping_methods",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Notes = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true),
                    CompanyId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    SerialNumber = table.Column<int>(type: "int", nullable: true),
                    Code = table.Column<string>(type: "nvarchar(25)", maxLength: 25, nullable: true),
                    IsActive = table.Column<bool>(type: "bit", nullable: false),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    IsSeeded = table.Column<bool>(type: "bit", nullable: false),
                    DateAdded = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UserAdded = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    DateUpdated = table.Column<DateTime>(type: "datetime2", nullable: true),
                    UserUpdated = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_dn_shipping_methods", x => x.Id);
                    table.ForeignKey(
                        name: "FK_dn_shipping_methods_datanex_companies_CompanyId",
                        column: x => x.CompanyId,
                        principalTable: "datanex_companies",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_datanex_documents_DocumentSeriesId",
                table: "datanex_documents",
                column: "DocumentSeriesId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_documents_PaymentMethodId",
                table: "datanex_documents",
                column: "PaymentMethodId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_documents_ShippingMethodId",
                table: "datanex_documents",
                column: "ShippingMethodId");

            migrationBuilder.CreateIndex(
                name: "IX_dn_payment_methods_CompanyId",
                table: "dn_payment_methods",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_dn_shipping_methods_CompanyId",
                table: "dn_shipping_methods",
                column: "CompanyId");

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_dn_document_series_DocumentSeriesId",
                table: "datanex_documents",
                column: "DocumentSeriesId",
                principalTable: "dn_document_series",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_dn_payment_methods_PaymentMethodId",
                table: "datanex_documents",
                column: "PaymentMethodId",
                principalTable: "dn_payment_methods",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_datanex_documents_dn_shipping_methods_ShippingMethodId",
                table: "datanex_documents",
                column: "ShippingMethodId",
                principalTable: "dn_shipping_methods",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_dn_document_series_DocumentSeriesId",
                table: "datanex_documents");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_dn_payment_methods_PaymentMethodId",
                table: "datanex_documents");

            migrationBuilder.DropForeignKey(
                name: "FK_datanex_documents_dn_shipping_methods_ShippingMethodId",
                table: "datanex_documents");

            migrationBuilder.DropTable(
                name: "dn_payment_methods");

            migrationBuilder.DropTable(
                name: "dn_shipping_methods");

            migrationBuilder.DropIndex(
                name: "IX_datanex_documents_DocumentSeriesId",
                table: "datanex_documents");

            migrationBuilder.DropIndex(
                name: "IX_datanex_documents_PaymentMethodId",
                table: "datanex_documents");

            migrationBuilder.DropIndex(
                name: "IX_datanex_documents_ShippingMethodId",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "DocumentSeriesId",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "PaymentMethodId",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "ShippingMethodId",
                table: "datanex_documents");
        }
    }
}
