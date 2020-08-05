import 'package:calorist/screen_anketa.dart';
import 'package:calorist/screen_anketa_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void nextStep(BuildContext ctx) {
      Navigator.of(ctx).push(MaterialPageRoute(
        builder: (context) => MyAnketaCategory(),
      ));
    }

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Эне-Бала",
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Добро пожаловать",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text(
                      "в Эне-Бала!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Image(
                      image: AssetImage("assets/images/welcome3.jpg"),
                      height: 400,
                    ),
                    Text(
                      "Определи что для тебя полезно!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                onPressed: () {
                  return nextStep(context);
                },
                child: Text(
                  "Продолжить",
                ),
                color: Colors.green,
              )
            ],
          ),
        ));
  }
}
