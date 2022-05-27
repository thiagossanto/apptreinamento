import 'package:apptreinamento/toDoList.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('Home Page'),
      centerTitle: true
       ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(100, 40),
              primary: const Color.fromRGBO(236, 79, 79, 1),
            ), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) =>const ToDoList())));
            }, child: const Text('To do list')),
            const SizedBox(height: 19),
            ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(100, 40),
              primary: const Color.fromRGBO(27, 107, 227, 1),
            ), onPressed: (){}, child: const Text('GitHub')),
            const SizedBox(height: 19),
            ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(100, 40),
              primary: const Color.fromRGBO(80, 237, 124, 1),
            ), onPressed: (){}, child: const Text('Desafio +'))
          ],
        ),
      ),
    ); 
  }
}