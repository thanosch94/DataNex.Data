﻿using DataNex.Data;
using DataNex.Model.Enums;
using DataNex.Model.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Xml.Linq;

namespace DataNex.Data
{
    public class ApplicationDataSeeder
    {
        public async Task Seed(IServiceProvider serviceProvider)
        {
            using (var scope = serviceProvider.CreateScope())
            {
                var context = scope.ServiceProvider.GetRequiredService<ApplicationDbContext>();
                await SeedData(context);
            }
        }
        public async Task SeedData(ApplicationDbContext context)
        {
            await SeedRoles(context);

            //await SeedCompanies(context);
            await SeedUsers(context);

            await SeedDocumentTypes(context);

            await SeedDocumentStatuses(context);
            

            
        }

        public async Task SeedRoles(ApplicationDbContext context)
        {
            var roles = await context.Roles.ToListAsync();

            if (!roles.Any(x=>x.Id==AppBase.DnAdminRoleId))
            {
                var roleToAdd = new Role()
                {
                    Id = AppBase.DnAdminRoleId,
                    Name = "DnAdmin",
                    NormalizedName = "DNADMIN",
                    ConcurrencyStamp = Guid.NewGuid().ToString(),
                    DateAdded = DateTime.Now,
                    IsSeeded = true,
                };

                context.Roles.Add(roleToAdd);
                context.SaveChanges();
            }

            if (!roles.Any(x => x.Id == AppBase.AdminRoleId))
            {
                var roleToAdd = new Role()
                {
                    Id = AppBase.AdminRoleId,
                    Name = "Admin",
                    NormalizedName = "ADMIN",
                    ConcurrencyStamp = Guid.NewGuid().ToString(),
                    DateAdded = DateTime.Now,
                    IsSeeded = true,

                };

                context.Roles.Add(roleToAdd);
                context.SaveChanges();
            }

            if (!roles.Any(x => x.Id == AppBase.SupervisorRoleId))
            {
                var roleToAdd = new Role()
                {
                    Id = AppBase.SupervisorRoleId,
                    Name = "Supervisor",
                    NormalizedName = "SUPERVISOR",
                    ConcurrencyStamp = Guid.NewGuid().ToString(),
                    DateAdded = DateTime.Now,
                    IsSeeded = true,

                };

                context.Roles.Add(roleToAdd);
                context.SaveChanges();
            }

            if (!roles.Any(x => x.Id == AppBase.UserRoleId))
            {
                var roleToAdd = new Role()
                {
                    Id = AppBase.UserRoleId,
                    Name = "User",
                    NormalizedName = "USER",
                    ConcurrencyStamp = Guid.NewGuid().ToString(),
                    DateAdded = DateTime.Now,
                    IsSeeded = true,

                };

                context.Roles.Add(roleToAdd);
                context.SaveChanges();
            }

        }

        public async Task SeedUsers(ApplicationDbContext context)
        {
            var users = await context.Users.ToListAsync();
            if (!users.Any(x=>x.Id==AppBase.DnAdmin))
            {
                var userToAdd = new User()
                {
                    Id = AppBase.DnAdmin,
                    Name = "dnadmin",
                    UserName = "dnadmin",
                    PasswordHash = "$2a$11$EwNeaOAFF8eyD2dMXxS/1uPEqMKPlTWNRFa9HR0c7bAgSAPT8wELy",
                    UserAdded = AppBase.DnAdmin,
                };

                context.Users.Add(userToAdd);
                context.SaveChanges();
            }

            if (!users.Any(x => x.Id == AppBase.Admin))
            {
                var userToAdd = new User()
                {
                    Id = AppBase.Admin,
                    Name = "admin",
                    UserName = "admin",
                    PasswordHash = "$2a$11$EwNeaOAFF8eyD2dMXxS/1uPEqMKPlTWNRFa9HR0c7bAgSAPT8wELy",
                    UserAdded = AppBase.DnAdmin,
                };

                context.Users.Add(userToAdd);
                context.SaveChanges();
            }


            //Set DnAdmin User Role

            var dnAdminUserRole = await context.UserRoles.FirstOrDefaultAsync(x => x.RoleId == AppBase.DnAdminRoleId && x.UserId == AppBase.DnAdmin);

            if(dnAdminUserRole == null)
            {
                var userRoleToAdd = new UserRole()
                {
                    UserId = AppBase.DnAdmin,
                    RoleId = AppBase.DnAdminRoleId,
                };

                context.UserRoles.Add(userRoleToAdd);
                context.SaveChanges();
            }

            var adminUserRole = await context.UserRoles.FirstOrDefaultAsync(x => x.RoleId == AppBase.AdminRoleId && x.UserId == AppBase.Admin);

            if (adminUserRole == null)
            {
                var userRoleToAdd = new UserRole()
                {
                    UserId = AppBase.Admin,
                    RoleId = AppBase.AdminRoleId,
                };

                context.UserRoles.Add(userRoleToAdd);
                context.SaveChanges();
            }
        }

        //public async Task SeedCompanies(ApplicationDbContext context)
        //{
        //    var company = await context.Companies.FirstOrDefaultAsync(x => x.Id == AppBase.BaseCompany);

        //    if (company == null)
        //    {
        //        var companyToAdd = new Company()
        //        {
        //            Id = AppBase.BaseCompany,
        //            Name = "Company",
        //            UserAdded = AppBase.DnAdmin,
        //            IsDefault = true,
        //        };

        //        context.Companies.Add(companyToAdd);
        //        context.SaveChanges();
        //    }
        //}


        public async Task SeedDocumentTypes(ApplicationDbContext context)
        {
            var documentTypes = await context.DocumentTypes.ToListAsync();

            if (!documentTypes.Any(x => x.Id == DataSeedIds.Offer))
            {
                var documentType = new DocumentType()
                {
                    Id = DataSeedIds.Offer,
                    Name = "Offer",
                    Abbreviation = "OFR",
                    DocumentTypeGroup = DocumentTypeGroupEnum.Sales,
                    IsSeeded = true,
                    UserAdded = AppBase.DnAdmin,

                };
                context.DocumentTypes.Add(documentType);
                context.SaveChanges();

            }

            if (!documentTypes.Any(x => x.Id == DataSeedIds.SalesOrder))
            {
                var documentType = new DocumentType()
                {
                    Id = DataSeedIds.SalesOrder,
                    Name = "Sales Order",
                    Abbreviation = "SO",
                    DocumentTypeGroup = DocumentTypeGroupEnum.Sales,
                    IsSeeded = true,
                    UserAdded = AppBase.DnAdmin,

                };
                context.DocumentTypes.Add(documentType);
                context.SaveChanges();

            }

            if (!documentTypes.Any(x => x.Id == DataSeedIds.ProformaInvoice))
            {
                var documentType = new DocumentType()
                {
                    Id = DataSeedIds.ProformaInvoice,
                    Name = "Proforma Invoice",
                    Abbreviation = "PI",
                    DocumentTypeGroup = DocumentTypeGroupEnum.Sales,
                    IsSeeded = true,
                    UserAdded = AppBase.DnAdmin,

                };
                context.DocumentTypes.Add(documentType);
                context.SaveChanges();

            }

            if (!documentTypes.Any(x => x.Id == DataSeedIds.Receipt))
            {
                var documentType = new DocumentType()
                {
                    Id = DataSeedIds.Receipt,
                    Name = "Receipt",
                    Abbreviation = "RCPT",
                    DocumentTypeGroup = DocumentTypeGroupEnum.Sales,
                    IsSeeded = true,
                    UserAdded = AppBase.DnAdmin,

                };
                context.DocumentTypes.Add(documentType);
                context.SaveChanges();

            }

            if (!documentTypes.Any(x => x.Id == DataSeedIds.Invoice))
            {
                var documentType = new DocumentType()
                {
                    Id = DataSeedIds.Invoice,
                    Name = "Invoice",
                    Abbreviation = "INV",
                    DocumentTypeGroup = DocumentTypeGroupEnum.Sales,
                    IsSeeded = true,
                    UserAdded = AppBase.DnAdmin,

                };
                context.DocumentTypes.Add(documentType);
                context.SaveChanges();

            }

            if (!documentTypes.Any(x => x.Id == DataSeedIds.SalesDeliveryNote))
            {
                var documentType = new DocumentType()
                {
                    Id = DataSeedIds.SalesDeliveryNote,
                    Name = "Sales Delivery Note",
                    Abbreviation = "SDN",
                    DocumentTypeGroup = DocumentTypeGroupEnum.Sales,
                    IsSeeded = true,
                    UserAdded = AppBase.DnAdmin,

                };
                context.DocumentTypes.Add(documentType);
                context.SaveChanges();

            }

            if (!documentTypes.Any(x => x.Id == DataSeedIds.PurchaseDeliveryNote))
            {
                var documentType = new DocumentType()
                {
                    Id = DataSeedIds.PurchaseDeliveryNote,
                    Name = "Purchase Delivery Note",
                    Abbreviation = "SDN",
                    DocumentTypeGroup = DocumentTypeGroupEnum.Purchasing,
                    IsSeeded = true,
                    UserAdded = AppBase.DnAdmin,

                };
                context.DocumentTypes.Add(documentType);
                context.SaveChanges();

            }

            if (!documentTypes.Any(x => x.Id == DataSeedIds.PurchaseInvoice))
            {
                var documentType = new DocumentType()
                {
                    Id = DataSeedIds.PurchaseInvoice,
                    Name = "Purchase Invoice",
                    Abbreviation = "PINV",
                    DocumentTypeGroup = DocumentTypeGroupEnum.Purchasing,
                    IsSeeded = true,
                    UserAdded = AppBase.DnAdmin,

                };
                context.DocumentTypes.Add(documentType);
                context.SaveChanges();

            }

            if (!documentTypes.Any(x => x.Id == DataSeedIds.PurchaseOrder))
            {
                var documentType = new DocumentType()
                {
                    Id = DataSeedIds.PurchaseOrder,
                    Name = "Purchase Order",
                    Abbreviation = "PO",
                    DocumentTypeGroup = DocumentTypeGroupEnum.Purchasing,
                    IsSeeded = true,
                    UserAdded = AppBase.DnAdmin,

                };
                context.DocumentTypes.Add(documentType);
                context.SaveChanges();

            }

            if (!documentTypes.Any(x => x.Id == DataSeedIds.CreditNote))
            {
                var documentType = new DocumentType()
                {
                    Id = DataSeedIds.CreditNote,
                    Name = "Credit Note",
                    Abbreviation = "CN",
                    DocumentTypeGroup = DocumentTypeGroupEnum.Finance,
                    IsSeeded = true,
                    UserAdded = AppBase.DnAdmin,

                };
                context.DocumentTypes.Add(documentType);
                context.SaveChanges();

            }
        }

        public async Task SeedDocumentStatuses(ApplicationDbContext context)
        {
            var statuses = await context.Statuses.ToListAsync();

            if (!statuses.Any(x => x.Id == DataSeedIds.Pending))
            {
                var status = new Status()
                {
                    Id = DataSeedIds.Pending,
                    Name = "Pending",
                    StatusType = StatusTypeEnum.Document,
                    IsSeeded = true
                };
                context.Statuses.Add(status);
                context.SaveChanges();

            }
                   
            if (!statuses.Any(x => x.Id == DataSeedIds.OnHold))
            {
                var status = new Status()
                {
                    Id = DataSeedIds.OnHold,
                    Name = "OnHold",
                    StatusType = StatusTypeEnum.Document,
                    IsSeeded = true
                };
                context.Statuses.Add(status);
                context.SaveChanges();

            }
                   
            if (!statuses.Any(x => x.Id == DataSeedIds.Processing))
            {
                var status = new Status()
                {
                    Id = DataSeedIds.Processing,
                    Name = "Processing",
                    StatusType = StatusTypeEnum.Document,
                    IsSeeded = true
                };
                context.Statuses.Add(status);
                context.SaveChanges();

            }
                   
            if (!statuses.Any(x => x.Id == DataSeedIds.Completed))
            {
                var status = new Status()
                {
                    Id = DataSeedIds.Completed,
                    Name = "Completed",
                    StatusType = StatusTypeEnum.Document,
                    IsSeeded = true
                };
                context.Statuses.Add(status);
                context.SaveChanges();

            }
                       
            if (!statuses.Any(x => x.Id == DataSeedIds.Returned))
            {
                var status = new Status()
                {
                    Id = DataSeedIds.Returned,
                    Name = "Returned",
                    StatusType = StatusTypeEnum.Document,
                    IsSeeded = true
                };
                context.Statuses.Add(status);
                context.SaveChanges();

            }

        }
    }
}
