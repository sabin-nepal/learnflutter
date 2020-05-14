import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/designui.dart';
import './screens/interactive.dart';
import './screens/fluecost.dart';
import './screens/todoshow.dart';


void main()=> runApp(LearnFlutterApp());

class LearnFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Learn Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Learn Flutter")
        ),
        body: LearnFlutter()
      ),
    );
  
  }
  
}

class LearnFlutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              InkWell(
                child:Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Hello World'),
                color: Colors.green[100],
              ),
              onTap:(){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home())
                  );
                }),
              InkWell(
                child:Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Design'),
                color: Colors.green[200],
              ),
              onTap: (){
                 Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DesignUi())
                  );
              },
              ),
              InkWell(
                child:Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                child: const Text('InterActive'),
                color: Colors.green[300],
              ),
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>InterActive())
                );
              },
              ),
              InkWell(
                child:Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Who scream'),
                color: Colors.green[400],
              ),
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>FlueCost())
                );
              }
              ),
              InkWell(
                child: Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Todos'),
                color: Colors.green[500],
              ),
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>TodoShow()));
              }
              ),
             
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution, they...'),
                color: Colors.green[600],
              ),
            ],
          ),
        ),
      ],
      );
  }

}