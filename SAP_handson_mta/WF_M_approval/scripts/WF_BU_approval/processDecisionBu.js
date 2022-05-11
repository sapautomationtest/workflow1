var lastUserTask1 = $.usertasks.usertask1.last;
$.context.userTaskBU =  $.usertasks.usertask1.last;
// $.context.Approver.UserId = lastUserTask1.processor;
// $.context.Approver.decision = lastUserTask1.decision;

 $.context.businessUnit.user     = lastUserTask1.processor;
 $.context.businessUnit.decision = lastUserTask1.decision;


 //save comments log
 var decision={};
 decision.user= lastUserTask1.processor;
 decision.role="CFO";
 decision.decision = lastUserTask1.decision;
 decision.comment=$.context.businessUnit.comment;
 $.context.comments.push(decision); 
 
 $.context.decision = lastUserTask1.decision;

 //clear
 $.context.businessUnit.decision = "";
 $.context.businessUnit.comment ="";
