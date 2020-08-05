import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  String cardTitle;
  double indentation;
  CardItem(this.cardTitle, this.indentation);
  void _onTap(ctx) {
    // Navigator.of(ctx).push(MaterialPageRoute(
    //   builder: (context) => MyAnketa(),
    // ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => _onTap(context),
      child: Card(
        margin: EdgeInsets.only(left: indentation, top: 5),
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              cardTitle,
              style: TextStyle(fontSize: 20, height: 1),
              textAlign: TextAlign.left,
            )
          ],
        ),

        // subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
      ),
    );
  }
}
