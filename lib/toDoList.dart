import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
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
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Adicionarr'
              ),
            ),
          ),
          IconButton(iconSize: 50 ,onPressed: (){}, icon: const Icon(Icons.add))
        ],)
      ]),
    );
  }
}