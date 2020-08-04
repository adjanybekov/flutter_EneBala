import 'package:calorist/models/Symptom.dart';
import 'package:flutter/material.dart';

class SymptomItem extends StatefulWidget {
  final Symptom symptom;
  SymptomItem(this.symptom);
  @override
  _SymptomItemState createState() => _SymptomItemState(symptom);
}

class _SymptomItemState extends State<SymptomItem> {
  final Symptom symptom;
  _SymptomItemState(this.symptom);
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: new Row(
      children: <Widget>[
        new Expanded(child: new Text(symptom.name)),
        new Checkbox(
            value: symptom.isCheck,
            onChanged: (bool value) {
              setState(() {
                symptom.isCheck = value;
              });
            })
      ],
    ));
  }
}
