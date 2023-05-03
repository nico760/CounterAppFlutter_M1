import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);


  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // Declaración de variable donde almacenaré el valor 
// del contador 
  int _value = 0;

// funciones: 
  void _increase(){
    setState(() {
      _value ++;
    });
  }
  void _decrease(){
    setState(() {
      _value --;
    });
  }
  
  void _reset(){
    setState(() {
      _value = 0;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(
            decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage("images/fondopantalla2.jpg"),
                ))),
        Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text('Usa los botones para aumentar o incrementar el valor mostrado',
              style: GoogleFonts.roboto(textStyle: const TextStyle(
                color:Colors.black 
                ),
              fontSize: 28
              ),
              textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 15),
            Text('$_value',
            style: GoogleFonts.roboto(textStyle: const TextStyle(color: Colors.black),
            fontSize: 28
            ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
            SizedBox(
              height: 48,
              width: 48,
              child: FloatingActionButton(onPressed: _decrease,
              backgroundColor: Colors.blue[50],
              child: const Icon(Icons.remove, color: Colors.black),
              ),
            ),
                  SizedBox(
              height: 64,
              width: 64,
              child: FloatingActionButton(onPressed: _reset,
              backgroundColor: Colors.blue[50],
              child: const Icon(Icons.exposure_zero, color: Colors.black),),
            ),
                  SizedBox(
              height: 48,
              width: 48,
              child: FloatingActionButton(onPressed: _increase,
              backgroundColor: Colors.blue[50],
              child: const Icon(Icons.add, color: Colors.black),),
              ),
            ],
            ),
          ),
        ],
      ),
      ),
    ],
    );
  }
}