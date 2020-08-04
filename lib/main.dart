import 'package:calorist/screen_welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {

//       _counter += 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(

//         title: Text(widget.title),
//       ),
//       body: Center(

//           child: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Container(
//               child: Text(
//                 "Welcome to the Colorist",
//                 style: TextStyle(fontSize: 20),
//               ),
//             ),
//             Container(
//               width: MediaQuery.of(context).size.width,
//               child: Image.asset('assets/images/welcome.jpg'),
//             ),
//             Container(
//               child: RaisedButton(
//                 onPressed: () => print("asd"),
//                 child: Text(
//                   'Continue',
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 color: Colors.orange,
//               ),
//               color: Colors.orange,
//             )
//           ],
//         ),
//       )),
//     );
//   }
// }
