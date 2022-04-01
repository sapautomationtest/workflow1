var lastUserTask1 = $.usertasks.usertask1.last;
 $.context.Approver.UserId = lastUserTask1.processor;
 $.context.Approver.decision = lastUserTask1.decision;


 //save comments log
 var decision={};
 decision.User= lastUserTask1.processor;
 decision.Role="BU Approver";
 decision.Decision = lastUserTask1.decision;
 decision.Comment=$.context.Approver.Comment;
 $.context.Comments.push(decision); 
 
 $.context.Decision = lastUserTask1.decision;

 //clear
 $.context.Approver.UserId = "";
 $.context.Approver.decision = "";
 $.context.Approver.Comment ="";
