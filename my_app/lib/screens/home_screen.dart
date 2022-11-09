import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);  //el super llama al constructor de la clase padre
  //el key es un identificador único para cada widget

  @override
  Widget build(BuildContext context) {

    int counter = 10;

    const styleAmber30 = TextStyle(fontSize: 30, color: Colors.amberAccent, fontWeight: FontWeight.bold); //constante para el estilo de los textos

    return Scaffold( //Scaffold es un widget en el cual podemos colocar otros widgets, es como un contenedor
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 20.0,
      ),
      body: Center( //en este ejemplo el widget Center es un widget hijo de Scaffold que centra el contenido
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Contador de clicks', style: styleAmber30),
            Text('$counter', style: styleAmber30),
          ],
        )
      ),
      /* floatingActionButtonLocation: FloatingActionButtonLocation.endTop, */
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hola Mundo');
          counter++;
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
    );
  }
}

//El BuildContext es un objeto que contiene información sobre el árbol de widgets en el que se encuentra el widget actual.
//En el caso de arriba el BuildContext es el de la clase o widge HomeScreen





