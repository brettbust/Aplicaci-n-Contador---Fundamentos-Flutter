import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget {

  const CounterScreen({Key? key}) : super(key: key);  
  @override
  State<CounterScreen> createState() => _CounterScreenState(); //el createState es un método que devuelve un objeto de tipo State
}



class _CounterScreenState extends State<CounterScreen> { //aca se define el estado del widget llamado _CounterScreenState que extiende de State
  //el super llama al constructor de la clase padre

  int counter = 10;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    const styleAmber30 = TextStyle(fontSize: 30, color: Colors.amberAccent, fontWeight: FontWeight.bold); //constante para el estilo de los textos

    return Scaffold( //Scaffold es un widget en el cual podemos colocar otros widgets, es como un contenedor
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Aplicación contador'),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //row de botones

      floatingActionButton: floatingactionbuttonsraw(
        incrementfn: incrementCounter, //se llama a la referencia de la función incrementCounter no se llama a la función directamente porque si no se ejecutaría cada vez que se construye el widget
        decrementfn: decrementCounter,
        resetfn: resetCounter,
      ),
    );
  }
}

class floatingactionbuttonsraw extends StatelessWidget {

  final Function incrementfn; //es un final ya que puede cambiar en tiempo de compilación
  final Function decrementfn;
  final Function resetfn;

  const floatingactionbuttonsraw({
    Key? key, required this.incrementfn, required this.decrementfn, required this.resetfn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
         
        FloatingActionButton(
          onPressed: () => decrementfn(), //setState es un método que se usa para actualizar el estado del widget},
          backgroundColor: Colors.amber,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(width: 12.0, height: 70.0),
        FloatingActionButton(
          onPressed: () => resetfn(), //acá si se llama a la función resetCounter
          backgroundColor: Colors.amber,
          child: const Icon(Icons.exposure_zero),
        ),
        const SizedBox(width: 15.0),
        FloatingActionButton(
          onPressed: () => incrementfn(), //acá si se llama a la función incrementCounter
          backgroundColor: Colors.amber,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}

//El BuildContext es un objeto que contiene información sobre el árbol de widgets en el que se encuentra el widget actual.
//En el caso de arriba el BuildContext es el de la clase o widge HomeScreen





