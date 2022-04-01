

/*hardcode response... */

//var response = $.context.rulesResponse.Result[0].Approvers;
var response  = {};
response.email = "ketlin.ilau@zurich.com"; 
response.firstName = "Jane";
response.lastName = "Doe";



$.context.approval.approver = reponse;
$.context.approval.comment = "";




/*var EquipInfo = [];
var equip = {};
if (EquipmentInfo.length > 0) {
    for (var i = 0; i < EquipmentInfo.length; i++) {
        equip = EquipmentInfo[i];
        equip.ProdDesc = equip.ProductDesc;
        equip.Status = "New";
        equip.ExpectedDate = "";
        equip.RequestedLoc = "Building 01";
        equip.CostCenter = $.context.empData.d.results[0].empInfo.jobInfoNav.results[0].costCenter;
        EquipInfo.push(equip);
    }
}else {
    equip = EquipmentInfo;
    equip.ProdDesc = equip.ProductDesc;
    equip.Status = "New";
    equip.ExpectedDate = "";
    equip.RequestedLoc = "Building 01";
    equip.CostCenter = $.context.empData.d.results[0].empInfo.jobInfoNav.results[0].costCenter;
    EquipInfo.push(equip);
}*/
