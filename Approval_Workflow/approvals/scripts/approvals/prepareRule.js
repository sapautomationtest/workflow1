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

var user = $.context.userData;

/************ Prepare Input Payload to Execute Rules ****************/
var businessUnit = {};
businessUnit.BUKEY = user.BU;

var Vocabulary = [{
    "BusinessUnit": businessUnit
}];
var rulesPayload = {
    "RuleServiceId": "960cb0b5347d4af0b24db45f022976e8",
    "RuleServiceRevision": "Approval",
    "Vocabulary": Vocabulary
};
$.context.rulesPayload = rulesPayload;

/************ Enhance Workflow Context for additional attributes ****************/
/*var attributes = {
    username: empData.firstName + " " + empData.lastName,
    division: empData.division,
    city: empData.city,
    country: empData.country,
    jobCode: empData.jobCode,
    jobTitle: empJob.jobTitle
};*/
//$.context.empData.personalInfo = attributes;

$.context.userData.fullName = user.firstName  + " " + user.lastName;


