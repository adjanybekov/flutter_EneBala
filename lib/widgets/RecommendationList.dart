import 'package:calorist/models/Recommendation.dart';
import 'package:calorist/models/Symptom.dart';
import 'package:calorist/widgets/RecommendationItem.dart';
import 'package:calorist/widgets/SymptomItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendationList extends StatefulWidget {
  final List<Symptom> symptoms = [Symptom("name", false)];
  // SymptomList(this.symptoms);

  @override
  _RecommendationListState createState() => _RecommendationListState();
}

class _RecommendationListState extends State<RecommendationList> {
  final List<Recommendation> recommendations = [
    Recommendation("name", "false"),
    Recommendation("name", "false"),
    Recommendation("name", "false"),
    Recommendation("name", "false"),
    Recommendation("name", "false"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Expanded(
                child: ListView(
              children: recommendations
                  .map((Recommendation s) => RecommendationItem(s))
                  .toList(),
            ))
          ],
        ),
        padding: EdgeInsets.all(10));
  }
}
