import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  
List<String> lista = List[];
final TextEditingController _controllertarefa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To do List Page'),
        centerTitle: true
        ),
      body: Column(children: [
        Row(children: [
            Container( width: 280, margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: TextFormField(
              controller: _controllertarefa,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Adicionar'
              ),
            ),
          ),
          Container( margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
           child: IconButton(color: Colors.red ,iconSize: 50 ,onPressed: (){}, icon: const Icon(Icons.add_circle)),
            ),
        ],),
        ListView(children: [
          
        ],)
      ]),
    );
  }
}