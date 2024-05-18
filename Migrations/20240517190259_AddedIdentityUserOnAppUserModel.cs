using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedIdentityUserOnAppUserModel : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Username",
                table: "datanex_users",
                newName: "UserName");

            migrationBuilder.AlterColumn<string>(
                name: "UserName",
                table: "datanex_users",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "PasswordHash",
                table: "datanex_users",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");
            migrationBuilder.DropPrimaryKey(name: "PK_datanex_users", table: "datanex_users");

            migrationBuilder.AlterColumn<string>(
                name: "Id",
                table: "datanex_users",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier");
            migrationBuilder.AddPrimaryKey(name: "PK_datanex_users", table: "datanex_users", column: "Id");

            migrationBuilder.AddColumn<int>(
                name: "AccessFailedCount",
                table: "datanex_users",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "ConcurrencyStamp",
                table: "datanex_users",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "EmailConfirmed",
                table: "datanex_users",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "LockoutEnabled",
                table: "datanex_users",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<DateTimeOffset>(
                name: "LockoutEnd",
                table: "datanex_users",
                type: "datetimeoffset",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "NormalizedEmail",
                table: "datanex_users",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "NormalizedUserName",
                table: "datanex_users",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "PhoneNumber",
                table: "datanex_users",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "PhoneNumberConfirmed",
                table: "datanex_users",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "SecurityStamp",
                table: "datanex_users",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "TwoFactorEnabled",
                table: "datanex_users",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "AccessFailedCount",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "ConcurrencyStamp",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "EmailConfirmed",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "LockoutEnabled",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "LockoutEnd",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "NormalizedEmail",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "NormalizedUserName",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "PhoneNumber",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "PhoneNumberConfirmed",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "SecurityStamp",
                table: "datanex_users");

            migrationBuilder.DropColumn(
                name: "TwoFactorEnabled",
                table: "datanex_users");

            migrationBuilder.RenameColumn(
                name: "UserName",
                table: "datanex_users",
                newName: "Username");

            migrationBuilder.AlterColumn<string>(
                name: "Username",
                table: "datanex_users",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "PasswordHash",
                table: "datanex_users",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<Guid>(
                name: "Id",
                table: "datanex_users",
                type: "uniqueidentifier",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");
        }
    }
}
