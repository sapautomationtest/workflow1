
/*
var userData = $.context.userData;
var firstName = userData.firstName;
var lastName = userData.lastName;
*/

var reqBU = $.context.BuList;

if (reqBU == "UK") {
    var approver = "ana.de.la.viuda.lopez@zurich.com";
 } 
 //else{};

var approval = {
    approver: approver
};
$.context.approval = approval;

$.context.userData.fullName = firstName  + " " + lastName;