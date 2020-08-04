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
        title: Text("Result Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Result Page"),
            RaisedButton(
              onPressed: () => _saveForm(context),
              child: Text("Завершить"),
            )
          ],
        ),
      ),
    );
  }
}
