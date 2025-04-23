using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataNex.Data
{
    public static class AppBase
    {
        public static string Version = "1.0.13";
        public static string CoreConnectionString = string.Empty; // Core Db Connection String for Client Data
        public static string ConnectionString = string.Empty; // Customer Db Connection String After successful login
        public static string ClientConnectionString = string.Empty; // Initial Customer Db Connection String before replacement
        public static string MasterConnectionString = string.Empty; // Initial Customer Db Connection String before replacement

        public static Guid DnAdmin = Guid.Parse("7ea7ace0-b13f-474d-95cc-bfd6b62fc0aa");

        public static Guid Admin = Guid.Parse("5987b878-5a16-47be-abf6-f6edaeaa3a2f");

        public static Guid wordpressDataSource = Guid.Parse("84481ee6-2f65-466d-8774-679b560862e9");

        public static Guid magentoDataSource = Guid.Parse("af9c50a7-f71c-43d3-918d-467f0a049c3d");

        public static Guid BaseCompany = Guid.Parse("46e479c2-f572-4fcc-985c-4d97e1233a16");

        public static Guid DnAdminRoleId = Guid.Parse("47bb0b5d-12c1-4a2e-86ab-6be74f488499");

        public static Guid SupervisorRoleId = Guid.Parse("5839db80-9584-4d96-9ac7-5ac44b990ca9");

        public static Guid AdminRoleId = Guid.Parse("b9d63f45-c0b7-4dd2-94d3-13173ddd8ff3");

        public static Guid UserRoleId = Guid.Parse("2aa7696b-012a-4a0e-b7e7-09e07025c05a");
    }
}
