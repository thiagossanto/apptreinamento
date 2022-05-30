import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  
List<String> lista = [];
final TextEditingController _controllertarefa = TextEditingController();

 @override
void initState() {
    super.initState();
    _controllertarefa.addListener(() {
      final String text = _controllertarefa.text.toLowerCase();
      _controllertarefa.value = _controllertarefa.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

 @override
  void dispose() {
    _controllertarefa.dispose();
    super.dispose();
  }

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
                labelText: 'Adicionar'
              ),
            ),
          ),
          Container( margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
           child: IconButton(color: Colors.red, iconSize: 50 ,onPressed: (){
             setState(() {
                lista.add(_controllertarefa.text);
                _controllertarefa.clear();
             });
           }, icon: const Icon(Icons.add_circle)),
            ),
        ],),
        Expanded(
          child: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) {
               return Card(
                child: ListTile(
                  title: Text(lista[index]),
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}