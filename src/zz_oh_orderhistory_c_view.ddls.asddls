@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for Order History'
define view entity ZZ_OH_OrderHistory_C_View as select from zzohorderhistory {
   
    key orderno as orderNo,
    businesspartner as businessPartnerId,
    @Semantics.businessDate.at: true
    orderdate as orderDate,
    @Semantics.businessDate.at: true
    deliverydate as deliveryDate,
    deliverystatus as deliveryStatus,
    wasorderdelayed as wasOrderDelayed
}
