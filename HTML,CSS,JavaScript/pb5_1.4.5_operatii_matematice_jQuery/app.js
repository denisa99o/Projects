var result=0;


function printValue(divId,value){

$("#"+divId).html(value);

}

printValue("result",0);


$("#add").on('click',add);

$("#sub").on('click',sub);

$("#div").on('click',div);

$("#mult").on('click',mult);

$("#mod").on('click',mod);

function add(){
result=parseInt($('#firstNumber').val())+parseInt($('#secondNumber').val());
 printValue("result",result);
}

function sub(){
result=parseInt($('#firstNumber').val())-parseInt($('#secondNumber').val());
 printValue("result",result);
}

function div(){
result=parseInt($('#firstNumber').val())/parseInt($('#secondNumber').val());
 printValue("result",result);
}

function mult(){
result=parseInt($('#firstNumber').val())*parseInt($('#secondNumber').val());
 printValue("result",result);
}

function mod(){
result=parseInt($('#firstNumber').val())%parseInt($('#secondNumber').val());
 printValue("result",result);
}