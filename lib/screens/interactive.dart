import 'package:flutter/material.dart';

class InterActive extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Interactive Widget",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Hello World")
          ),
          body: InterActiveWidget(),
        ),
    );
  }

}

class InterActiveWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _InterActiveState();
  
  }
  
class _InterActiveState extends State<InterActiveWidget> {
  String name="";
  final _currencies = ['Dollars','Euro','Pounds'];
  String _currency = 'Dollars'; 
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children:<Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: 'Please Enter Your name',
              labelText: "Name"
            ),
            onChanged: (String string){
              setState(() {
                name= string;
              });
            },
          ),
          DropdownButton<String>(
            items: _currencies.map((String value){
              return DropdownMenuItem<String>(
                value: value,
                child:Text(value)
              );
            }).toList(),
            value: _currency,
            onChanged: (String value){
              _onDropdownChanged(value);
            }),
          Text("Name"+ name)
        ]
      ),
    );
  }
  _onDropdownChanged(String value){
    setState(() {
      this._currency = value;
    });
  }
}