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
    Recommendation("Каша гречневая", "false", "grechka.jpg"),
    Recommendation("Яблоко зеленое", "false", "yabloko.jpg"),
    Recommendation("Уха из форели", "false", "uha.jpg"),
    Recommendation("Пюре с котлетой на пару", "false", "kotlety.jpg"),
    Recommendation("Соленые огурцы", "false", "ogurcy.jpg"),
    Recommendation("Кукуруза вереная", "false", "kukuruza.jpg"),
    Recommendation("Кымыз", "false", "kymyz.jpg"),
    Recommendation("Куриный бульон", "false", "kurinyiSup.jpg"),
    Recommendation("Каша гречневая", "false", "grechka.jpg"),
    Recommendation("Уха из форели", "false", "uha.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Expanded(
                child: GridView(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              children: recommendations
                  .map((Recommendation s) => RecommendationItem(s))
                  .toList(),
            ))
          ],
        ),
        padding: EdgeInsets.all(10));
  }
}
