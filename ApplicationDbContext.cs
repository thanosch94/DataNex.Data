using DataNex.Model.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataNex.Data
{
    public class ApplicationDbContext:DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> contextOptions):base(contextOptions)
        {
           
        }

        public virtual DbSet<User> Users { get; set; }

        public virtual DbSet<Customer> Customers { get; set; }

        public virtual DbSet<Document> Documents { get; set; }

        public virtual DbSet<DocumentType> DocumentTypes { get; set; }  

        public virtual DbSet<Product> Products { get; set; }

        public virtual DbSet<Brand> Brands { get; set; }
        public virtual DbSet<Status> Statuses { get; set; }

        public virtual DbSet<ProductSize> ProductSizes { get; set; }

        public virtual DbSet<DocumentProduct> DocumentProducts { get; set; }

        public virtual DbSet<ProductBarcode> ProductBarcodes { get; set; }

       
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            var eTypes = modelBuilder.Model.GetEntityTypes();
            foreach (var type in eTypes)
            {
                var foreignKeys = type.GetForeignKeys();
                foreach (var foreignKey in foreignKeys)
                {
                    foreignKey.DeleteBehavior = DeleteBehavior.Restrict;
                }
            }

        }
    }
}
