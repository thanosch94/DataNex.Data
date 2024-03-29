﻿// <auto-generated />
using System;
using DataNex.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace DataNex.Data.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20240203153810_AddedDocumemt")]
    partial class AddedDocumemt
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "8.0.1")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("DataNex.Model.Models.Customer", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Address")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("City")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Country")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<long?>("Phone1")
                        .HasColumnType("bigint");

                    b.Property<long?>("Phone2")
                        .HasColumnType("bigint");

                    b.Property<string>("PostalCode")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Region")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TaxOffice")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("VatNumber")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.ToTable("datanex_customers");
                });

            modelBuilder.Entity("DataNex.Model.Models.Document", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("CustomerId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<int>("DocumentNumber")
                        .HasColumnType("int");

                    b.Property<decimal?>("DocumentTotal")
                        .HasPrecision(18, 2)
                        .HasColumnType("decimal(18,2)");

                    b.Property<Guid>("DocumentTypeId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("Id");

                    b.HasIndex("CustomerId");

                    b.HasIndex("DocumentTypeId");

                    b.ToTable("datanex_documents");
                });

            modelBuilder.Entity("DataNex.Model.Models.DocumentType", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("DocumentType");
                });

            modelBuilder.Entity("DataNex.Model.Models.User", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid?>("CompanyId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("datanex_users");
                });

            modelBuilder.Entity("DataNex.Model.Models.Document", b =>
                {
                    b.HasOne("DataNex.Model.Models.Customer", "Customer")
                        .WithMany("Documnents")
                        .HasForeignKey("CustomerId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("DataNex.Model.Models.DocumentType", "DocumentType")
                        .WithMany("Documnents")
                        .HasForeignKey("DocumentTypeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Customer");

                    b.Navigation("DocumentType");
                });

            modelBuilder.Entity("DataNex.Model.Models.Customer", b =>
                {
                    b.Navigation("Documnents");
                });

            modelBuilder.Entity("DataNex.Model.Models.DocumentType", b =>
                {
                    b.Navigation("Documnents");
                });
#pragma warning restore 612, 618
        }
    }
}
