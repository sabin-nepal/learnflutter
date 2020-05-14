import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
          appBar: AppBar(
            title: Text("Hello World")
          ),
          body: HelloWorld(),
        );
  }
}

class HelloWorld extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[400],
      child: Center(
        child: Text(
          sayHello(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color:Colors.white,fontSize:36.0),
          ) ,
        ),
    );
  }

  String sayHello(){
    String hello;
    DateTime now = DateTime.now();
    int hour = now.hour;
    int minute = now.minute;
    if(hour<12){
      hello = "Good Morning";
    }
    else if(hour < 18){
      hello = "Good Afternoon";
    }
    else{
      hello = "Good Evening";
    }

    String minutes = (minute < 10) ? "0" + minute.toString() : minute.toString();

    return "It is "+ hour.toString() +":"+minutes+". \n"+ hello;

  }

}