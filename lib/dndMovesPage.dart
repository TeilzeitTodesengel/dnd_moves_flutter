import 'package:flutter/material.dart';
import 'package:dnd_moves/layouts.dart';
import 'package:dnd_moves/common.dart';

class DnDMovesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DnDMove();
}

class DnDMove extends State<DnDMovesPage> {
  TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.helloWorld),
      ),
      body: _getBodyItem(_selectedIndex, context),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pending_actions),
            label: 'Aktionen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallpaper),
            label: 'Conditions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _getBodyItem(int index, BuildContext context) {

    switch (index) {
      case 0:
        return aktionen(context);
      case 1:
        return Text('test2', style: optionStyle,);
      case 2:
        return Text('test3', style: optionStyle,);
      default:
        return Text('Index out of range', style: optionStyle,);

    }
  }
}



