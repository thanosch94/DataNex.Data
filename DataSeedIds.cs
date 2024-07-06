using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataNex.Data
{
    public class DataSeedIds
    {
        //Document Types
        public static Guid Offer = Guid.Parse("ea9422a4-c930-44b4-bb1e-a87a019cf716");
        public static Guid SalesOrder = Guid.Parse("580f43bd-0b77-4a93-b95e-b04f851463ea");
        public static Guid ProformaInvoice = Guid.Parse("3a7da7f5-93e7-40a6-8e62-6a2836ecec96");
        public static Guid Receipt = Guid.Parse("115f1623-c161-4b4f-8dc6-abbbd875d618");
        public static Guid Invoice = Guid.Parse("976ed3dc-e0ee-43a4-a4ec-cf1c0a88dd07");
        public static Guid SalesDeliveryNote = Guid.Parse("bdde347b-e4b5-477f-8246-439b2bf6a946");
        public static Guid PurchaseDeliveryNote = Guid.Parse("a8a278ef-d5de-4a1e-b29b-652177d04d5e");
        public static Guid PurchaseOrder = Guid.Parse("270dce95-9562-4c63-86ee-0aeca760ab9b");
        public static Guid PurchaseInvoice = Guid.Parse("c7825a32-6007-48b4-936d-f558c9b788c3");
        public static Guid CreditNote = Guid.Parse("4437b7c7-c4a1-4de9-ace3-4e807b9a5f13");


        //Statuses
        public static Guid Pending = Guid.Parse("6462d79c-6289-4779-9aaa-1d182c512dab");
        public static Guid OnHold = Guid.Parse("4364282a-7df2-4c7a-9c2a-49cef6f14143");
        public static Guid Processing = Guid.Parse("a28ec2c6-6195-4dfd-95ce-c428f675c810");
        public static Guid Completed = Guid.Parse("3fe07a77-418b-4a79-a625-5093b6d88da6");
        public static Guid Returned = Guid.Parse("e72dbda9-e8dd-4b46-8dc5-c182d78a91ac");

    }
}
