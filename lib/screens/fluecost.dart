import 'package:flutter/material.dart';

class FlueCost extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Flue Cost")
          ),
          body: FlueCostWidget(),
        );
  }

}

class FlueCostWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FlueCostState();
  }
  
class _FlueCostState extends State<FlueCostWidget> {
  String result="";
  final _currencies = ['Dollars','Euro','Pounds'];
  TextEditingController distanceController = TextEditingController(); 
  TextEditingController avgController = TextEditingController(); 
  TextEditingController priceController = TextEditingController(); 
  String _currency = 'Dollars'; 
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children:<Widget>[
          TextField(
            controller: distanceController,
            decoration: InputDecoration(
              hintText: 'e.g. 124',
              labelText: "Distance",
              labelStyle: textStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0)
              )
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: avgController,
            decoration: InputDecoration(
              hintText: 'e.g. 17',
              labelText: "Distance per unit",
              labelStyle: textStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0)
              )
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: priceController,
            decoration: InputDecoration(
              hintText: 'e.g. 1.24',
              labelText: "Price",
              labelStyle: textStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0)
              )
            ),
            keyboardType: TextInputType.number,
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
            RaisedButton(
              color:Theme.of(context).primaryColorDark,
              textColor:Theme.of(context).primaryColorLight,
              onPressed: (){
                setState(() {
                  result = _calculate();
                });
              },
              child:Text(
                "Submit",
                textScaleFactor:1.5,
                )
            ),
          Text("Name"+ result)
        ]
      ),
    );
  }
  _onDropdownChanged(String value){
    setState(() {
      this._currency = value;
    });
  }

  String _calculate(){
    double _distance = double.parse(distanceController.text);
    double _fuelCost = double.parse(avgController.text);
    double _consumption = double.parse(priceController.text);

    double _totalCost = _distance / _consumption * _fuelCost;

    String _result = "The total cost of your trip is " +
          _totalCost.toStringAsFixed(2) + ' '+ _currency;
        
    return _result;
  }

}