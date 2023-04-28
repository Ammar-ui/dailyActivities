

import 'package:flutter/material.dart';

import 'todo.dart';
import 'todo_item.dart';


class Home extends StatefulWidget{
    Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {
  final todoList=ToDo.todoList();
  List<ToDo> _foundToDo=[];
  final _todoController=TextEditingController();


  @override
  void initState() {
    _foundToDo=todoList;
    super.initState();
  }



@override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
     appBar: AppBar(

       elevation: 0,

       backgroundColor:Colors.grey[300],
       title: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Icon(Icons.menu,color:Colors.black38 ,size: 40,),
           Container(
             width: 50,
              height: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('images/Ammar_r.jpeg'),
              ),

           )
         ],
       ),

     ),

      body: Stack(

        children:[ Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                // for search box
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color:Colors.white ,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                   onChanged: (value) =>_runFilter(value),
                   decoration: InputDecoration(
                     contentPadding: EdgeInsets.all(0),
                     prefixIcon: Icon(Icons.search, color: Colors.black,size: 20,),
                     prefixIconConstraints: BoxConstraints(maxHeight: 20,minWidth: 25),
                     border: InputBorder.none,
                     hintText: "Search",
                     hintStyle: TextStyle(color: Colors.grey),
                   ),
                ),
              ),
              Expanded(child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30,bottom: 20),
                    child: Text("ToDo All: ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                  ),
                  for(ToDo todo in _foundToDo.reversed)
                      ToDoItem(todo: todo,OnToDoChanged:_handleToDoChange ,
                      OnDeleteItem:_deleteToDoItem ,
                      ),

                ],
              ),),



            ],
          ),

        ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(child: Container(
                  margin: EdgeInsets.only(bottom: 20,left: 20,right: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    boxShadow:const [BoxShadow(color: Colors.grey,offset: Offset(0.0,0.0), blurRadius: 10.0,
                   spreadRadius: 0.0,

                   ) ,],
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: TextField(
                    controller:_todoController ,
                    decoration:InputDecoration(
                      hintText: "Add new task ",
                      border: InputBorder.none,

                    ),

                  ),
                ),),
                 Container(
                   margin: EdgeInsets.only(bottom: 20,right: 20),
                   child: ElevatedButton(
                       child: Text("+",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.black),),
                       onPressed:(){
                         _addToDoItem(_todoController.text);
                       },
                     style: ElevatedButton.styleFrom(primary: Colors.grey[500],minimumSize: Size(60, 60),elevation: 10),




                   ),

                 ),
              ],

            ),
          ),
        ]
      ),
    );

  }
  void _handleToDoChange(ToDo todo){
      setState(() {
        todo.isDone=!todo.isDone;
      });

  }

  void _deleteToDoItem(String id){
    setState(() {
      todoList.removeWhere((item) => item.id==id);
    });

  }
  void _addToDoItem (String toDo){

    setState(() {
      todoList.add(ToDo(id: DateTime.now().microsecond.toString(), todoText: toDo,));
    });
   _todoController.clear();
  }


  void _runFilter(String Enterkeeyword){
    List<ToDo> results=[];
    if(Enterkeeyword.isEmpty){
      results=todoList;
    }else{
      results=todoList.where((item) => item.todoText!.toLowerCase().contains(Enterkeeyword.toLowerCase())).toList();
    }

    setState(() {
      _foundToDo=results;
    });
  }





}

