using {sap} from '@sap/cds/common';
using {gwsample as external} from '../srv/external/gwsample.csn';

namespace purchaseorders;

entity PurchaseOrders {
    key PurchaseOrderUUID: UUID;
        Units: Integer;
        Date: Date;
        Price: Decimal(13,3);
        ProductID: Association to one Products;
        BusinessPartner: Association to one BusinessPartner;
        Currency: Association to one Currency;
}

entity Products as projection on external.ProductSet;
entity BusinessPartner as projection on external.BusinessPartnerSet;
entity Currency as projection on external.VH_CurrencySet;

