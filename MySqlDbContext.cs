using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataNex.Data
{
    public class MySqlDbContext: ApplicationDbContext
    {
        public MySqlDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {

        }
    }
}
