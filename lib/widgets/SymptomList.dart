import 'package:calorist/models/Symptom.dart';
import 'package:calorist/widgets/SymptomItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SymptomList extends StatefulWidget {
  final List<Symptom> symptoms = [Symptom("name", false)];
  // SymptomList(this.symptoms);

  @override
  _SymptomListState createState() => _SymptomListState();
}

class _SymptomListState extends State<SymptomList> {
  final List<Symptom> symptoms = [
    Symptom("name", false),
    Symptom("name", false),
    Symptom("name", false),
    Symptom("name", false),
    Symptom("name", false),
    Symptom("name", false),
    Symptom("name", false),
    Symptom("name", false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Expanded(
                child: ListView(
              children: symptoms.map((Symptom s) => SymptomItem(s)).toList(),
            ))
          ],
        ),
        padding: EdgeInsets.all(10));
  }
}
