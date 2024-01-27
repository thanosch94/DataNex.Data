using Microsoft.EntityFrameworkCore;

namespace DataNex.Data
{
    public class MsSqlDbContext:ApplicationDbContext
    {
        public MsSqlDbContext(DbContextOptions<ApplicationDbContext> options):base(options) 
        {
            
        }
    }
}
