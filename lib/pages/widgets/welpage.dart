import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelWidget extends StatefulWidget {
  const WelWidget({super.key});

  @override
  State<WelWidget> createState() => _WelWidgetState();
}

class _WelWidgetState extends State<WelWidget> {
  int _counter = 0;

// funciones: 
  void _increment(){
    setState(() {
      _counter ++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage("images/fondopantalla.jpeg"),
                ))),
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text('App de contador', 
                style: GoogleFonts.roboto(textStyle: const TextStyle(
                color:Colors.white 
                ),
              fontSize: 28
              ),
                ),
              ),
              const SizedBox(height: 40),
              Stack(
                children: [
                  SizedBox(
                width: 300,
                height: 300,
                child: Card(
                  margin: const EdgeInsets.only(top:50),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.only(top:100),
                    child: Column(
                      children: [Text('Haga doble touch sobre el número',
                          style: GoogleFonts.roboto(fontSize: 20),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          ),
                        GestureDetector(
                          onDoubleTap: _increment,
                          child: Text('$_counter',
                          style: GoogleFonts.roboto(fontSize: 24),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          ),
                        ),
                      ],
                    )
                    ),
                ),
              ),
              const Positioned(
                left: 100,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/nico.jpg'),
                ),
              ),
              ],
              )
            ],
          )
          ),
      ],
    );
  }
}