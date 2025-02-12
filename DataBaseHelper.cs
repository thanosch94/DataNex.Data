using Google.Protobuf.WellKnownTypes;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

namespace DataNex.Data
{
    public class DataBaseHelper
    {
        public async Task CreateDatabase(string dbName)
        {
            using (SqlConnection conn = new SqlConnection(AppBase.MasterConnectionString))
            {
                conn.Open();
                var createDbQuery = $"CREATE DATABASE [dn_clnt_{dbName}]";
                using (SqlCommand command = new SqlCommand(createDbQuery, conn))
                {
                    command.ExecuteNonQuery();

                }
                var optionsBuilder = new DbContextOptionsBuilder<ApplicationDbContext>();
                var connString = AppBase.ClientConnectionString.Replace("{clientDbName}", dbName);
                optionsBuilder.UseSqlServer(connString);

                using (var context = new ApplicationDbContext(optionsBuilder.Options))
                {
                    try
                    {
                        // Creates the database if it does not already exist
                        await context.Database.MigrateAsync();
                    }
                    catch (Exception ex)
                    {
                        //Send an email to dnAdmin to inform about the error 
                        throw;
                    }
                }
                var dropDbQuery = $"DROP DATABASE [dn_clnt_{dbName}]";
                using (SqlCommand command = new SqlCommand(dropDbQuery, conn))
                {
                    command.ExecuteNonQuery();
                }

                conn.Close();

            }


        }



        public async Task DropDatabase(string dbName)
        {
            using (SqlConnection conn = new SqlConnection(AppBase.MasterConnectionString))
            { 
            }
        }
        public async Task SeedDataToNewDb(ApplicationDbContext context)

        {

            try
            {
                var applicationDataSeeder = new ApplicationDataSeeder();
                await applicationDataSeeder.SeedData(context);

            }
            catch (Exception ex)
            {
                //Send an email to dnAdmin to inform about the error 
                throw;
            }

        }
    }
}
