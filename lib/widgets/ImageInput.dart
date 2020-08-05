import 'dart:io';

import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  final File _storedImage;
  ImageInput(this._storedImage);
  @override
  _ImageInputState createState() => _ImageInputState(_storedImage);
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage;

  _ImageInputState(this._storedImage);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
      child: _storedImage != null
          ? Image.file(
              _storedImage,
              fit: BoxFit.cover,
              width: double.infinity,
            )
          : Text("Нет картинки"),
      alignment: Alignment.center,
    );
  }
}
