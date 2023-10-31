using {gwsample as external} from '../srv/external/gwsample.csn';
using purchaseorders from '../db/schema';

service purchaseordersservice {
    entity PurchaseOrders as projection on purchaseorders.PurchaseOrders;
    entity Products as projection on purchaseorders.Products;
    entity BusinessPartners as projection on purchaseorders.BusinessPartners;
    entity Currencies as projection on purchaseorders.Currencies;
}