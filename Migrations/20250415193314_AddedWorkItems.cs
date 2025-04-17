using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DataNex.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddedWorkItems : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Type",
                table: "datanex_workitem_types",
                newName: "Category");

            migrationBuilder.CreateTable(
                name: "datanex_workitems",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MasterTaskId = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    StatusId = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    AssigneeId = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    WorkItemTypeId = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    WorkItemCategory = table.Column<int>(type: "int", nullable: false),
                    SprintId = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    DueDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CompanyId = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
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
                    table.PrimaryKey("PK_datanex_workitems", x => x.Id);
                    table.ForeignKey(
                        name: "FK_datanex_workitems_AspNetUsers_AssigneeId",
                        column: x => x.AssigneeId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_datanex_workitems_datanex_companies_CompanyId",
                        column: x => x.CompanyId,
                        principalTable: "datanex_companies",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_datanex_workitems_datanex_statuses_StatusId",
                        column: x => x.StatusId,
                        principalTable: "datanex_statuses",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_datanex_workitems_datanex_workitem_types_WorkItemTypeId",
                        column: x => x.WorkItemTypeId,
                        principalTable: "datanex_workitem_types",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_datanex_workitems_AssigneeId",
                table: "datanex_workitems",
                column: "AssigneeId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_workitems_CompanyId",
                table: "datanex_workitems",
                column: "CompanyId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_workitems_StatusId",
                table: "datanex_workitems",
                column: "StatusId");

            migrationBuilder.CreateIndex(
                name: "IX_datanex_workitems_WorkItemTypeId",
                table: "datanex_workitems",
                column: "WorkItemTypeId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "datanex_workitems");

            migrationBuilder.RenameColumn(
                name: "Category",
                table: "datanex_workitem_types",
                newName: "Type");
        }
    }
}
