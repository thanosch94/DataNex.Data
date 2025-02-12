using DataNex.Model.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataNex.Data
{
    public class CoreDbContext : DbContext
    {
        public CoreDbContext(DbContextOptions<CoreDbContext> contextOptions) : base(contextOptions)
        {
        }

        public virtual DbSet<Client> Clients { get; set; }
        public virtual DbSet<AppModule> AppModules { get; set; }
        public virtual DbSet<CompanyAppModule> CompanyAppModules { get; set; }
        public virtual DbSet<CompanyAppModuleSubscription> CompanyAppModuleSubscriptions { get; set; }



       
    }
}

