import 'package:calorist/screen_recommendations.dart';
import 'package:flutter/material.dart';

class AnketaResultScreen extends StatelessWidget {
  _saveForm(ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (context) => RecommendationScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Результаты"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(20),
              color: Colors.lightBlue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    // padding: EdgeInsets.all(10),
                    child: Flexible(
                      child: Text(
                        'Вы входите в ГРУППУ РИСКА ПО РАЗВИТИЮ ЖДА - нет анемии, но в группе риска – профилактика (здоровое, сбалансированное питание).                                                  Для профилактики развития железодефицитной анемии во время беременности используются те же препараты, что и для лечения этого осложнения. Профилактика развития железодефицитной анемии у беременных группы риска по возникновению данной патологии, заключается в назначении небольших доз препаратов железа (1-2 таблетки в день) в течение 4 - 6 месяцев, начиная с 14 - 16 недель беременности, курсами по 2-3 ',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      fit: FlexFit.tight,
                    ),
                  )
                ],
              ),

              // subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            RaisedButton(
              onPressed: () => _saveForm(context),
              child: Text(
                "Завершить",
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.white,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
