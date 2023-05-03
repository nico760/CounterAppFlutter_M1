import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage(this.listPages, this.isDark, this.onSwitchChanged, {Key? key}) : super(key: key);

  final List<Widget> listPages; 
  final bool isDark;
  final void Function(bool currentValue) onSwitchChanged;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'App Contador',
            style: TextStyle(fontSize: 20, 
            fontWeight: FontWeight.bold),
          ),
        ),
      ),
    body: widget.listPages[_index],
    floatingActionButton: Switch(
          value: widget.isDark, 
          onChanged: widget.onSwitchChanged
          ),
    bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            ), 
            label: 'Home',
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.blue,
            ), 
            label: 'Perfil',
            tooltip: 'Perfil'
          ), 
      ],
      ),
    );
  }
}