var bank_balance = 2000;
var amount = 200;
if (amount<bank_balance){
  console.log("I want to buy this phone");
  }
else {
    console.log("you don't have balance to buy");
  }


var a = 22.22;
var b = Number(a);
console.log(a);
console.log(b);


console.log(x === undefined); // true
var x = 3;

//loops
while(1<0){
  console.log("How may i help you?");
  
}

do{
  console.log("How may i help you???");
 
}while(1<0);

for(var i=0; i<=9; i=i+1){
  console.log(i);
}

lebel :
while(1>0 == true)
{
  console.log("true")

break;
}

var i = 0;
var n = 0;
while (i < 5) {
  i++;
  if (i == 3) {
    continue;
  }
  console.log(i)
}


var n = prompt("Enter a number to find odd or even", "Type your number here");
n = parseInt(n);
if (isNaN(n))
{
alert("Please Enter a Number");
}
else if (n == 0)
{
alert("The number is zero");
}
else if (n%2)
{
alert("The number is odd");
}
else
{
alert("The number is even");
}