import 'dart:io';

import 'package:calorist/widgets/CardItem.dart';
import 'package:calorist/widgets/ImageInput.dart';
import 'package:flutter/material.dart';
import 'package:tree_view/tree_view.dart';

class ImageDetailsScreen extends StatelessWidget {
  final File _takenImage;
  ImageDetailsScreen(this._takenImage);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Детали еды"),
      ),
      body: Column(
        children: <Widget>[
          ImageInput(_takenImage),
          // Text("Детали Еды show image here")
          Expanded(
            child: TreeView(
              parentList: [
                Parent(
                  parent: CardItem('Яблоко', 0),
                  childList: ChildList(
                    children: <Widget>[
                      Parent(
                        parent: CardItem('Витамины', 20),
                        childList: ChildList(
                          children: <Widget>[
                            CardItem('Витамин А    10гр', 40),
                            CardItem('Витамин B    30гр', 40),
                          ],
                        ),
                      ),
                      CardItem('Калории     150 Ккал', 20),
                      CardItem('Жиры         10гр', 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(20),
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Есть можно!',
                  style: TextStyle(fontSize: 30, height: 4),
                  textAlign: TextAlign.center,
                )
              ],
            ),

            // subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
        ],
      ),
    );
  }
}
