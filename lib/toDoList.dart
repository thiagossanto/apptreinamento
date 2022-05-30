import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  State<ToDoList> createState() => _ToDoListState();
}

List<String> lista = [];

class _ToDoListState extends State<ToDoList> {
  final TextEditingController _controllertarefa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('To do List Page'), centerTitle: true),
      body: Column(children: [
        Row(
          children: [
            Container(
              width: 280,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextFormField(
                controller: _controllertarefa,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Adicionar'),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: IconButton(
                  color: Colors.red,
                  iconSize: 50,
                  onPressed: () {
                    setState(() {
                      lista.add(_controllertarefa.text);
                      _controllertarefa.clear();
                    });
                  },
                  icon: const Icon(Icons.add_circle)),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Expanded(
          child: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) {
              return Card(
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    SizedBox(width: 290, child: Text(lista[index])),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.check_circle),
                        color: Colors.red),
                    IconButton(
                        onPressed: () {
                          lista.removeAt(index);
                          setState(() {});
                        },
                        icon: const Icon(Icons.delete),
                        color: Colors.red)
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
