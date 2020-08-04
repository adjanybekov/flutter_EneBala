import 'package:calorist/screen_image_details.dart';
import 'package:calorist/widgets/RecommendationList.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class RecommendationScreen extends StatefulWidget {
  @override
  _RecommendationScreenState createState() => _RecommendationScreenState();
}

class _RecommendationScreenState extends State<RecommendationScreen> {
  File _storedImage;
  Future<void> _takePicture() async {
    final picker = ImagePicker();
    final imageFile =
        await picker.getImage(source: ImageSource.camera, maxWidth: 600);

    setState(() {
      _storedImage = File(imageFile.path);
    });
    if (_storedImage != null) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ImageDetailsScreen(_storedImage),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Рекоммендации"),
      ),
      body: Container(
        child: RecommendationList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _takePicture,
        child: Icon(Icons.camera),
        backgroundColor: Colors.green,
      ),
    );
  }
}
