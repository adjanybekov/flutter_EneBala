import 'package:calorist/models/Recommendation.dart';
import 'package:calorist/models/Symptom.dart';
import 'package:flutter/material.dart';

class RecommendationItem extends StatefulWidget {
  final Recommendation recommendation;
  RecommendationItem(this.recommendation);
  @override
  _RecommendationItemState createState() =>
      _RecommendationItemState(recommendation);
}

class _RecommendationItemState extends State<RecommendationItem> {
  final Recommendation recommendation;
  _RecommendationItemState(this.recommendation);
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: new Row(
      children: <Widget>[
        new Expanded(child: new Text(recommendation.name)),
        new Expanded(child: new Text(recommendation.content)),
      ],
    ));
  }
}
