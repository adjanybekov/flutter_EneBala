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
    return Container(
        // padding: EdgeInsets.all(15),
        // child: Image(
        //   image: AssetImage("assets/images/welcome3.jpg"),
        //   // height: double.infinity,
        //   // width: double.infinity,
        //   fit: BoxFit.fill,
        // ),
        decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.amber,
      image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/" + recommendation.imageUrl)),
    ));
    // return ListTile(
    //     title: Row(
    //   children: <Widget>[
    //     new Expanded(child: new Text(recommendation.name)),
    //     new Expanded(child: new Text(recommendation.content)),
    //   ],
    // ));
  }
}
