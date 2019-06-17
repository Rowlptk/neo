function myfunc(){
    // document.write("This text is from Script tag");
    // console.log("log");
    // window.alert("I m an alert message");
    //document.getElementById("demo").innerHTML = "This is from script tag";

    var number1 = parseInt(document.getElementById("num1").value);
    //alert(typeof(number1));
    var number2 = parseInt(document.getElementById("num2").value);
    //alert(typeof(number2))
    var result = number1 + number2;
    document.getElementById("res").innerHTML = "The sum is " + result;
    document.getElementById("res").style.color = "red";


};