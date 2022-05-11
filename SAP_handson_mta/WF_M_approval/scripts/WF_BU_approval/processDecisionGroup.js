var lastUserTask = $.usertasks.usertask2.last;
$.context.userTaskGroup =  $.usertasks.usertask2.last;


 //save comments log
 var decision={};
 decision.user= lastUserTask.processor;
 decision.role="Group FAR";
 decision.decision = lastUserTask.decision;
 decision.comment=$.context.businessUnit.comment;
 if (decision.comment != null) {
 $.context.comments.push(decision);
 }; 
 

 $.context.decision2 = lastUserTask.decision;

 

