using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedCustomer : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "datanex_customers",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    BAddress = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    BRegion = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    BPostalCode = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    BCity = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    BCountry = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    BPhone1 = table.Column<int>(type: "int", nullable: true),
                    BPhone2 = table.Column<int>(type: "int", nullable: true),
                    BEmail = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SAddress = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SRegion = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SPostalCode = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SCity = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SCountry = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SPhone1 = table.Column<int>(type: "int", nullable: true),
                    SPhone2 = table.Column<int>(type: "int", nullable: true),
                    SEmail = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datanex_customers", x => x.Id);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "datanex_customers");
        }
    }
}
