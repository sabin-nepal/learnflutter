
import 'package:flutter/material.dart';
import 'package:hello_world/util/dbhelper.dart';
import 'package:hello_world/model/todo.dart';

class TodoShow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   DbHelper helper = DbHelper();
   List<Todo> todos = List<Todo>();
   helper.initializeDb().then(
     (result)=> helper.getTodos().then((result)=>todos=result)
   );
   DateTime today = DateTime.now();
   Todo todo = Todo("Buy APples",1,today.toString(),"Description");
   helper.insertTodo(todo);


   return Scaffold(

     appBar: AppBar(
       title:Text("Todos")
     ),
     body:TodoShowWidget(),
   );
  }

}

class TodoShowWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return null;
  }

}