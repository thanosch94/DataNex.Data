using DataNex.Model.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace DataNex.Data
{
    public class ApplicationDbContext : IdentityDbContext<User, Role, Guid>
    {
        private string _connectionString;
        public ApplicationDbContext(string connectionString)
        {
            _connectionString = connectionString;
        }
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> contextOptions) : base(contextOptions)
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
        public virtual DbSet<Log> Logs { get; set; }
        public virtual DbSet<ConnectorParameters> ConnectorParameters { get; set; }
        public virtual DbSet<WooConnectionsData> WooConnectionsData { get; set; }
        public virtual DbSet<AdditionalCharge> AdditionalCharges { get; set; }
        public virtual DbSet<DocumentAdditionalCharge> DocumentAdditionalCharges { get; set; }
        public virtual DbSet<ConnectorJob> ConnectorJobs { get; set; }
        public virtual DbSet<WareHouse> WareHouses { get; set; }
        public virtual DbSet<Supplier> Suppliers { get; set; }
        public virtual DbSet<VatClass> VatClasses { get; set; }
        public virtual DbSet<Company> Companies { get; set; }
        public virtual DbSet<Lot> Lots { get; set; }
        public virtual DbSet<LotSettings> LotsSettings { get; set; }
        public virtual DbSet<GeneralOptions> GeneralAppOptions { get; set; }
        public virtual DbSet<DocumentProductLotQuantity> DocumentProductLotsQuantities { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<WorkItem> WorkItems { get; set; }
        public virtual DbSet<WorkItemType> WorkItemTypes { get; set; }
        public virtual DbSet<AppPermission> AppPermissions { get; set; }
        public virtual DbSet<UserAppPermission> UserAppPermissions { get; set; }



        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                if (!string.IsNullOrEmpty(_connectionString))
                {
                    optionsBuilder.UseSqlServer(_connectionString);
                }

            }
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<DocumentProduct>()
    .HasMany(dp => dp.DocumentProductLotsQuantities)
    .WithOne(lq => lq.DocumentProduct)
    .HasForeignKey(lq => lq.DocumentProductId)
    .OnDelete(DeleteBehavior.Cascade); // Enable cascade delete
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
