import 'package:calorist/screen_symptoms.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyAnketa extends StatefulWidget {
  @override
  _MyAnketaState createState() => _MyAnketaState();
}

class _MyAnketaState extends State<MyAnketa> {
  //date code start
  final TextEditingController _controller = new TextEditingController();
  Future _chooseDate(BuildContext context, String initialDateString) async {
    var now = new DateTime.now();
    var initialDate = convertToDate(initialDateString) ?? now;
    initialDate = (initialDate.year >= 1900 && initialDate.isBefore(now)
        ? initialDate
        : now);

    var result = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: new DateTime(1900),
        lastDate: new DateTime.now());

    if (result == null) return;

    setState(() {
      _controller.text = new DateFormat.yMd().format(result);
    });
  }

  DateTime convertToDate(String input) {
    try {
      var d = new DateFormat.yMd().parseStrict(input);
      return d;
    } catch (e) {
      return null;
    }
  }

  //date code end

  int group = 1;

  //save form

  void _saveForm(ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (context) => SymptomScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnketaCategory"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.save), onPressed: () => _saveForm(context))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
            child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Рост ", icon: const Icon(Icons.accessibility)),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Вес ", icon: const Icon(Icons.accessibility_new)),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.numberWithOptions(),
            ),
            new Row(children: <Widget>[
              new Expanded(
                  child: new TextFormField(
                decoration: new InputDecoration(
                  icon: const Icon(Icons.calendar_today),
                  hintText: 'Enter your date of birth',
                  labelText: 'Дата рождения',
                ),
                controller: _controller,
                keyboardType: TextInputType.datetime,
              )),
              new IconButton(
                icon: new Icon(Icons.more_horiz),
                tooltip: 'Choose date',
                onPressed: (() {
                  _chooseDate(context, _controller.text);
                }),
              )
            ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Пол"),
                  Row(
                    children: <Widget>[
                      Icon(Icons.account_circle),
                      Radio(
                        value: 1,
                        groupValue: group,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            group = value;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: group,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            group = value;
                          });
                        },
                      ),
                    ],
                  ),
                ])
          ],
        )),
      ),
    );
  }
}
