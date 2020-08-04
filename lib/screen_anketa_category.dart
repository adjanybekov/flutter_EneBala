import 'package:calorist/screen_anketa.dart';
import 'package:calorist/screen_symptoms.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyAnketaCategory extends StatefulWidget {
  @override
  _MyAnketaCategoryState createState() => _MyAnketaCategoryState();
}

class _MyAnketaCategoryState extends State<MyAnketaCategory> {
  void _saveForm(ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (context) => MyAnketa(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Категории"),
        ),
        body: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () => _saveForm(context),
              child: Card(
                margin: EdgeInsets.all(20),
                color: Colors.pink,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Беременная женщина',
                      style: TextStyle(fontSize: 25, height: 4),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),

                // subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              ),
            ),
            GestureDetector(
              onTap: () => _saveForm(context),
              child: Card(
                margin: EdgeInsets.all(20),
                color: Colors.yellow,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Кормящая мама',
                      style: TextStyle(fontSize: 25, height: 4),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),

                // subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              ),
            ),
            GestureDetector(
              onTap: () => _saveForm(context),
              child: Card(
                margin: EdgeInsets.all(20),
                color: Colors.lightBlue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Ребенок',
                      style: TextStyle(fontSize: 25, height: 4),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),

                // subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              ),
            ),
          ],
        ));
  }
}
