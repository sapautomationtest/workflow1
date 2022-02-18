/*
// read from existing workflow context 
var productInfo = $.context.productInfo; 
var productName = productInfo.productName; 
var productDescription = productInfo.productDescription;

// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;

// read user task information
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskSubject = lastUserTask1.subject;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;

var userTaskStatusMessage = " User task '" + userTaskSubject + "' has been completed by " + userTaskProcessor + " at " + userTaskCompletedAt;

// create new node 'product'
var product = {
		productDetails: productName  + " " + productDescription,
		workflowStep: taskDefinitionId
};

// write 'product' node to workflow context
$.context.product = product;
*/

var response = $.context.rulesResponse.Result[0].Approvers;
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
var mail = response.email;
var approval = {
    approver: mail
};

$.context.approval = approval;