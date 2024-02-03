using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class ChangesOnCustomerModel : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "BAddress",
                table: "datanex_customers");

            migrationBuilder.DropColumn(
                name: "BCity",
                table: "datanex_customers");

            migrationBuilder.DropColumn(
                name: "BCountry",
                table: "datanex_customers");

            migrationBuilder.DropColumn(
                name: "BEmail",
                table: "datanex_customers");

            migrationBuilder.DropColumn(
                name: "BPhone1",
                table: "datanex_customers");

            migrationBuilder.DropColumn(
                name: "BPostalCode",
                table: "datanex_customers");

            migrationBuilder.RenameColumn(
                name: "SRegion",
                table: "datanex_customers",
                newName: "TaxOffice");

            migrationBuilder.RenameColumn(
                name: "SPostalCode",
                table: "datanex_customers",
                newName: "Region");

            migrationBuilder.RenameColumn(
                name: "SPhone2",
                table: "datanex_customers",
                newName: "VatNumber");

            migrationBuilder.RenameColumn(
                name: "SPhone1",
                table: "datanex_customers",
                newName: "Phone2");

            migrationBuilder.RenameColumn(
                name: "SEmail",
                table: "datanex_customers",
                newName: "PostalCode");

            migrationBuilder.RenameColumn(
                name: "SCountry",
                table: "datanex_customers",
                newName: "Email");

            migrationBuilder.RenameColumn(
                name: "SCity",
                table: "datanex_customers",
                newName: "Country");

            migrationBuilder.RenameColumn(
                name: "SAddress",
                table: "datanex_customers",
                newName: "City");

            migrationBuilder.RenameColumn(
                name: "BRegion",
                table: "datanex_customers",
                newName: "Address");

            migrationBuilder.RenameColumn(
                name: "BPhone2",
                table: "datanex_customers",
                newName: "Phone1");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "VatNumber",
                table: "datanex_customers",
                newName: "SPhone2");

            migrationBuilder.RenameColumn(
                name: "TaxOffice",
                table: "datanex_customers",
                newName: "SRegion");

            migrationBuilder.RenameColumn(
                name: "Region",
                table: "datanex_customers",
                newName: "SPostalCode");

            migrationBuilder.RenameColumn(
                name: "PostalCode",
                table: "datanex_customers",
                newName: "SEmail");

            migrationBuilder.RenameColumn(
                name: "Phone2",
                table: "datanex_customers",
                newName: "SPhone1");

            migrationBuilder.RenameColumn(
                name: "Phone1",
                table: "datanex_customers",
                newName: "BPhone2");

            migrationBuilder.RenameColumn(
                name: "Email",
                table: "datanex_customers",
                newName: "SCountry");

            migrationBuilder.RenameColumn(
                name: "Country",
                table: "datanex_customers",
                newName: "SCity");

            migrationBuilder.RenameColumn(
                name: "City",
                table: "datanex_customers",
                newName: "SAddress");

            migrationBuilder.RenameColumn(
                name: "Address",
                table: "datanex_customers",
                newName: "BRegion");

            migrationBuilder.AddColumn<string>(
                name: "BAddress",
                table: "datanex_customers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "BCity",
                table: "datanex_customers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "BCountry",
                table: "datanex_customers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "BEmail",
                table: "datanex_customers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "BPhone1",
                table: "datanex_customers",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "BPostalCode",
                table: "datanex_customers",
                type: "nvarchar(max)",
                nullable: true);
        }
    }
}
