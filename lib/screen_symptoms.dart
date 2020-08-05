import 'package:calorist/models/Symptom.dart';
import 'package:calorist/widgets/SymptomList.dart';
import 'package:calorist/screen_result.dart';
import 'package:flutter/material.dart';

class SymptomScreen extends StatefulWidget {
  @override
  _SymptomScreenState createState() => _SymptomScreenState();
}

class _SymptomScreenState extends State<SymptomScreen> {
  List<Symptom> symptoms = [Symptom("name", false)];

  _saveForm(ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (context) => AnketaResultScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Симптомы"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.save), onPressed: () => _saveForm(context))
        ],
      ),
      body: Container(
        child: SymptomList(),
      ),
    );
  }
}
