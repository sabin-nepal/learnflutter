import 'package:flutter/material.dart';

class DesignUi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
          appBar: AppBar(
            title: Text("Hello World")
          ),
          body: DesignUiWidget(),
        );
  }
}

class DesignUiWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Container(
        alignment: Alignment.center,
        color: Colors.deepOrangeAccent,
        child: Text("Pizza",
        style: TextStyle(
          fontSize:40.0,
        ),
        textDirection: TextDirection.ltr,),
      );
  }

}