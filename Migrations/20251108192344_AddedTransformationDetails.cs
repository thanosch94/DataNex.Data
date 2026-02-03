using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedTransformationDetails : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<Guid>(
                name: "SourceStatusId",
                table: "dn_doctypes_transformations",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "TargetStatusId",
                table: "dn_doctypes_transformations",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "SourceDocIds",
                table: "datanex_documents",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "TargetDocIds",
                table: "datanex_documents",
                type: "nvarchar(max)",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "SourceStatusId",
                table: "dn_doctypes_transformations");

            migrationBuilder.DropColumn(
                name: "TargetStatusId",
                table: "dn_doctypes_transformations");

            migrationBuilder.DropColumn(
                name: "SourceDocIds",
                table: "datanex_documents");

            migrationBuilder.DropColumn(
                name: "TargetDocIds",
                table: "datanex_documents");
        }
    }
}
