using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedUserInputs : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTime>(
                name: "UserDate1",
                table: "datanex_documents",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "UserDate2",
                table: "datanex_documents",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "UserDate3",
                table: "datanex_documents",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "UserDate4",
                table: "datanex_documents",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<long>(
                name: "UserNumber1",
                table: "datanex_documents",
                type: "bigint",
                nullable: true);

            migrationBuilder.AddColumn<long>(
                name: "UserNumber2",
                table: "datanex_documents",
                type: "bigint",
                nullable: true);

            migrationBuilder.AddColumn<long>(
                name: "UserNumber3",
                table: "datanex_documents",
                type: "bigint",
                nullable: true);

            migrationBuilder.AddColumn<long>(
                name: "UserNumber4",
                table: "datanex_documents",
                type: "bigint",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UserText1",
                table: "datanex_documents",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UserText2",
                table: "datanex_documents",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UserText3",
                table: "datanex_documents",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UserText4",
                table: "datanex_documents",
                type: "nvarchar(max)",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "UserDate1",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "UserDate2",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "UserDate3",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "UserDate4",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "UserNumber1",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "UserNumber2",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "UserNumber3",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "UserNumber4",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "UserText1",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "UserText2",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "UserText3",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "UserText4",
                table: "datanex_documents");
        }
    }
}
