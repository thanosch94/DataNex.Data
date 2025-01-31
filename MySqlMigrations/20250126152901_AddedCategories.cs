using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.MySqlMigrations
{
    /// <inheritdoc />
    public partial class AddedCategories : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Barcode",
                table: "datanex_products",
                type: "varchar(255)",
                maxLength: 255,
                nullable: true)
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AddColumn<Guid>(
                name: "Category1Id",
                table: "datanex_products",
                type: "char(36)",
                nullable: true,
                collation: "ascii_general_ci");

            migrationBuilder.AddColumn<Guid>(
                name: "Category2Id",
                table: "datanex_products",
                type: "char(36)",
                nullable: true,
                collation: "ascii_general_ci");

            migrationBuilder.AddColumn<Guid>(
                name: "Category3Id",
                table: "datanex_products",
                type: "char(36)",
                nullable: true,
                collation: "ascii_general_ci");

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "AspNetRoles",
                type: "varchar(25)",
                maxLength: 25,
                nullable: true)
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AddColumn<DateTime>(
                name: "DateAdded",
                table: "AspNetRoles",
                type: "datetime(6)",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "DateUpdated",
                table: "AspNetRoles",
                type: "datetime(6)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "AspNetRoles",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "AspNetRoles",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsSeeded",
                table: "AspNetRoles",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<int>(
                name: "SerialNumber",
                table: "AspNetRoles",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "UserAdded",
                table: "AspNetRoles",
                type: "char(36)",
                nullable: true,
                collation: "ascii_general_ci");

            migrationBuilder.AddColumn<Guid>(
                name: "UserUpdated",
                table: "AspNetRoles",
                type: "char(36)",
                nullable: true,
                collation: "ascii_general_ci");

            migrationBuilder.CreateTable(
                name: "datanex_categories",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    Name = table.Column<string>(type: "varchar(255)", maxLength: 255, nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    CategoryType = table.Column<int>(type: "int", nullable: false),
                    CategoryLevel = table.Column<byte>(type: "tinyint unsigned", nullable: false),
                    CompanyId = table.Column<Guid>(type: "char(36)", nullable: true, collation: "ascii_general_ci"),
                    SerialNumber = table.Column<int>(type: "int", nullable: true),
                    Code = table.Column<string>(type: "varchar(25)", maxLength: 25, nullable: true)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    IsActive = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    IsDeleted = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    IsSeeded = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    DateAdded = table.Column<DateTime>(type: "datetime(6)", nullable: false),
                    UserAdded = table.Column<Guid>(type: "char(36)", nullable: true, collation: "ascii_general_ci"),
                    DateUpdated = table.Column<DateTime>(type: "datetime(6)", nullable: true),
                    UserUpdated = table.Column<Guid>(type: "char(36)", nullable: true, collation: "ascii_general_ci")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datanex_categories", x => x.Id);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "datanex_general_options",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    LotsEnabled = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    CompanyId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    SerialNumber = table.Column<int>(type: "int", nullable: true),
                    Code = table.Column<string>(type: "varchar(25)", maxLength: 25, nullable: true)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    IsActive = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    IsDeleted = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    IsSeeded = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    DateAdded = table.Column<DateTime>(type: "datetime(6)", nullable: false),
                    UserAdded = table.Column<Guid>(type: "char(36)", nullable: true, collation: "ascii_general_ci"),
                    DateUpdated = table.Column<DateTime>(type: "datetime(6)", nullable: true),
                    UserUpdated = table.Column<Guid>(type: "char(36)", nullable: true, collation: "ascii_general_ci")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datanex_general_options", x => x.Id);
                    table.ForeignKey(
                        name: "FK_datanex_general_options_datanex_companies_CompanyId",
                        column: x => x.CompanyId,
                        principalTable: "datanex_companies",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "datanex_lots",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    Name = table.Column<string>(type: "varchar(25)", maxLength: 25, nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    ProductId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    Notes = table.Column<string>(type: "varchar(255)", maxLength: 255, nullable: true)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    ProdDate = table.Column<DateTime>(type: "datetime(6)", nullable: true),
                    ExpDate = table.Column<DateTime>(type: "datetime(6)", nullable: true),
                    SupplierId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    RemainingQty = table.Column<int>(type: "int", nullable: false),
                    CompanyId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    SerialNumber = table.Column<int>(type: "int", nullable: true),
                    Code = table.Column<string>(type: "varchar(25)", maxLength: 25, nullable: true)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    IsActive = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    IsDeleted = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    IsSeeded = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    DateAdded = table.Column<DateTime>(type: "datetime(6)", nullable: false),
                    UserAdded = table.Column<Guid>(type: "char(36)", nullable: true, collation: "ascii_general_ci"),
                    DateUpdated = table.Column<DateTime>(type: "datetime(6)", nullable: true),
                    UserUpdated = table.Column<Guid>(type: "char(36)", nullable: true, collation: "ascii_general_ci")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datanex_lots", x => x.Id);
                    table.ForeignKey(
                        name: "FK_datanex_lots_datanex_companies_CompanyId",
                        column: x => x.CompanyId,
                        principalTable: "datanex_companies",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "datanex_lots_settings",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    LotStrategy = table.Column<int>(type: "int", nullable: false),
                    LotStrategyApplyField = table.Column<int>(type: "int", nullable: false),
                    CompanyId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    SerialNumber = table.Column<int>(type: "int", nullable: true),
                    Code = table.Column<string>(type: "varchar(25)", maxLength: 25, nullable: true)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    IsActive = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    IsDeleted = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    IsSeeded = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    DateAdded = table.Column<DateTime>(type: "datetime(6)", nullable: false),
                    UserAdded = table.Column<Guid>(type: "char(36)", nullable: true, collation: "ascii_general_ci"),
                    DateUpdated = table.Column<DateTime>(type: "datetime(6)", nullable: true),
                    UserUpdated = table.Column<Guid>(type: "char(36)", nullable: true, collation: "ascii_general_ci")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datanex_lots_settings", x => x.Id);
                    table.ForeignKey(
                        name: "FK_datanex_lots_settings_datanex_companies_CompanyId",
                        column: x => x.CompanyId,
                        principalTable: "datanex_companies",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "datanex_documentproducts_lots_quantities",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    DocumentProductId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    LotId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    Quantity = table.Column<int>(type: "int", nullable: false),
                    SerialNumber = table.Column<int>(type: "int", nullable: true),
                    Code = table.Column<string>(type: "varchar(25)", maxLength: 25, nullable: true)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    IsActive = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    IsDeleted = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    IsSeeded = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    DateAdded = table.Column<DateTime>(type: "datetime(6)", nullable: false),
                    UserAdded = table.Column<Guid>(type: "char(36)", nullable: true, collation: "ascii_general_ci"),
                    DateUpdated = table.Column<DateTime>(type: "datetime(6)", nullable: true),
                    UserUpdated = table.Column<Guid>(type: "char(36)", nullable: true, collation: "ascii_general_ci")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datanex_documentproducts_lots_quantities", x => x.Id);
                    table.ForeignKey(
                        name: "FK_datanex_documentproducts_lots_quantities_datanex_documentpro~",
                        column: x => x.DocumentProductId,
                        principalTable: "datanex_documentproducts",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_datanex_documentproducts_lots_quantities_datanex_lots_LotId",
                        column: x => x.LotId,
                        principalTable: "datanex_lots",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_documentproducts_lots_quantities_DocumentProductId",
                table: "datanex_documentproducts_lots_quantities",
                column: "DocumentProductId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_documentproducts_lots_quantities_LotId",
                table: "datanex_documentproducts_lots_quantities",
                column: "LotId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_general_options_CompanyId",
                table: "datanex_general_options",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_lots_CompanyId",
                table: "datanex_lots",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_lots_settings_CompanyId",
                table: "datanex_lots_settings",
                column: "CompanyId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "datanex_categories");

            migrationBuilder.DropTable(
                name: "datanex_documentproducts_lots_quantities");

            migrationBuilder.DropTable(
                name: "datanex_general_options");

            migrationBuilder.DropTable(
                name: "datanex_lots_settings");

            migrationBuilder.DropTable(
                name: "datanex_lots");

            migrationBuilder.DropColumn(
                name: "Barcode",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "Category1Id",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "Category2Id",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "Category3Id",
                table: "datanex_products");

            migrationBuilder.DropColumn(
                name: "Code",
                table: "AspNetRoles");

            migrationBuilder.DropColumn(
                name: "DateAdded",
                table: "AspNetRoles");

            migrationBuilder.DropColumn(
                name: "DateUpdated",
                table: "AspNetRoles");

            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "AspNetRoles");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "AspNetRoles");

            migrationBuilder.DropColumn(
                name: "IsSeeded",
                table: "AspNetRoles");

            migrationBuilder.DropColumn(
                name: "SerialNumber",
                table: "AspNetRoles");

            migrationBuilder.DropColumn(
                name: "UserAdded",
                table: "AspNetRoles");

            migrationBuilder.DropColumn(
                name: "UserUpdated",
                table: "AspNetRoles");
        }
    }
}
