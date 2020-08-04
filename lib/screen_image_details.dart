import 'dart:io';

import 'package:calorist/widgets/ImageInput.dart';
import 'package:flutter/material.dart';

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
          Text("Детали Еды show image here")
        ],
      ),
    );
  }
}
