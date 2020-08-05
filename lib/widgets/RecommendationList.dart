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
    Recommendation("Каша гречневая", "false",
        "https://www.gastronom.ru/binfiles/images/20150212/b7f594cb.jpg"),
    Recommendation("Яблоко зеленое", "false",
        "https://static6.depositphotos.com/1001686/624/i/450/depositphotos_6248705-stock-photo-green-apple-isolated-on-white.jpg"),
    Recommendation("Уха из форели", "false",
        "https://vilkin.pro/wp-content/uploads/2019/06/uxa-iz-foreli-770x513.jpg"),
    Recommendation("Пюре с котлетой на пару", "false",
        "https://static.1000.menu/img/content/36147/kotlety-s-garnirom_1561320552_11_max.jpg"),
    Recommendation("Соленые огурцы", "false",
        "https://img.povar.ru/main/db/71/58/51/solenie_ogurci_hrustyashie-64456.jpg"),
    Recommendation("Кукуруза вереная", "false",
        "https://static.1000.menu/img/content/3472/varenaya-kukuruza_1351448549_5_max.jpg"),
    Recommendation("Кымыз", "false",
        "https://cbtkyrgyzstan.kg/wp-content/uploads/2020/01/Kymyz-festival.jpg"),
    Recommendation("Куриный бульон", "false",
        "https://s8.cdn.teleprogramma.pro/wp-content/uploads/2018/01/f59874fb86a51d2cb94f5ede13ffa923.jpg"),
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
