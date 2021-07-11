import 'package:flutter/material.dart';
import 'package:dnd_moves/common.dart';

const TextStyle optionStyle =
TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

Widget aktionen(BuildContext context) {
  return SizedBox(
    child: Card(
      child: ListTile(
        title: Text(AppLocalizations.of(context)!.attack_headline,
          style: TextStyle(fontWeight: FontWeight.w500),),
        subtitle: Text(AppLocalizations.of(context)!.attack_description),
        leading: Icon(
          Icons.remove_red_eye,
          color: Colors.blue,
        ),
      ),
    ),
  );
}

