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
    return Card(
      child: ListTile(
          title: new Expanded(
              child: new Text(
            symptom.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )),
          trailing: new Checkbox(
              value: symptom.isCheck,
              onChanged: (bool value) {
                setState(() {
                  symptom.isCheck = value;
                });
              })),
    );
  }
}
