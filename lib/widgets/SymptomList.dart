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
    Symptom("Слабость", false),
    Symptom("Быстрая утомляемость", false),
    Symptom("Наррушения сна-бессоница", false),
    Symptom("Головные боли", false),
    Symptom("Головокружение", false),
    Symptom("Шум в ушах", false),
    Symptom("Одышка", false),
    Symptom("Сердцебиение", false),
    Symptom("Обморок", false),
    Symptom("Сухость + трескание кожи", false),
    Symptom("Воспаление коймы губ", false),
    Symptom("Ломкие слоящиеся ногти", false),
    Symptom("Сухие ломкие волосы", false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          children: symptoms.map((Symptom s) => SymptomItem(s)).toList(),
        ),
        padding: EdgeInsets.all(10));
  }
}
