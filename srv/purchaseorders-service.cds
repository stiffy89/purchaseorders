using {gwsample as external} from '../srv/external/gwsample.csn';
using purchaseorders from '../db/schema';

service purchaseordersservice {

    entity PurchaseOrders {
        key PurchaseOrderUUID: UUID;
            Units: Integer;
            Date: Date;
            Price: Decimal(13,3);
    }
}