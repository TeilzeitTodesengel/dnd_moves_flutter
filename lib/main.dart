import 'package:flutter/material.dart';
import 'package:dnd_moves/dndMovesPage.dart';
import 'package:dnd_moves/common.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,

      supportedLocales: AppLocalizations.supportedLocales,

      title: 'RPG Names',
      home: DnDMovesPage(),
    );
  }


}

