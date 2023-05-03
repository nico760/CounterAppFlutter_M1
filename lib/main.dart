import 'package:flutter/material.dart';
import 'package:project_uno/pages/homepage.dart';
import 'package:project_uno/pages/widgets/counter.dart';
import 'package:project_uno/pages/widgets/welpage.dart';


void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}): super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> with WidgetsBindingObserver {
  bool _isDark = false;

    @override
  void initState() {
    //Esta funcion se ejecuta antes de crear el widget.
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'CounterApp',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: _getThemeMode(), // con el system hago referencia al tema actual de mi dispositivo
      debugShowCheckedModeBanner: false,
      home: HomePage(
        const [CounterPage(), WelWidget()], 
        _isDark, 
        _onSwitchChanged,
        ),
    );
  }
  void _onSwitchChanged(bool currentValue){
    setState(() {
      _isDark = currentValue;
    });
  }

  ThemeMode _getThemeMode (){
    if(_isDark){
      return ThemeMode.dark;
    } else{
      return ThemeMode.light;
    }
  }
}

