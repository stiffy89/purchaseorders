using purchaseordersservice as service from '../../srv/purchaseorders-service';

annotate service.PurchaseOrders with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : Product.Name,
            Label : 'Name',
        },
        {
            $Type : 'UI.DataField',
            Value : BusinessPartner.CompanyName,
            Label : 'CompanyName',
        },
        {
            $Type : 'UI.DataField',
            Value : Price,
            Label : 'Total Price',
        },
        {
            $Type : 'UI.DataField',
            Value : Date,
            Label : 'Purchase Date',
        },
        {
            $Type : 'UI.DataField',
            Value : Units,
            Label : 'Units',
        },
    ]
);
annotate service.PurchaseOrders with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Purchase Order',
            ID : 'PurchaseOrder',
            Target : '@UI.FieldGroup#PurchaseOrder',
        },
    ],
    UI.FieldGroup #PurchaseOrder : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Date,
                Label : 'Date',
            },{
                $Type : 'UI.DataField',
                Value : Price,
                Label : 'Price',
            },{
                $Type : 'UI.DataField',
                Value : Units,
                Label : 'Units',
            },],
    }
);
