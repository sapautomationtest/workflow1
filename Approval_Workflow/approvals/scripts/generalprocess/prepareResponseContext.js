//var buList = 

var approvalList = [];
var approval = {};

approvalList.push(approval);

//prepare JSON array in context to receive the responses
//list needs to be explicitily created in context
$.context.approval = approvalList;

//prepare BUList
var buList = [];
var text = $.context.userData.BU;
/*var bu = {
    "BU": text
}
buList.push(bu);
*/
var bus = text.split(",");

var v_length = bus.length;

/*var bu = {
    "BU": bus[0]
}
buList.push(bu);*/

//var bu = {};

for(var i = 0; i < v_length; i++){

    var bu = {
        "BU": bus[i]
    }
    buList.push(bu);
}
$.context.userData.BUList = buList;