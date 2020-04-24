import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selected;
  List<Map> _myJson = [
    {"id": '1', "image": "assets/banks/affinbank.png", "name": "Affin Bank"},
    {"id": '2', "image": "assets/banks/ambank.png", "name": "Ambank"},
    {"id": '3', "image": "assets/banks/bankislam.png", "name": "Bank Isalm"},
    {"id": '4', "image": "assets/banks/bankrakyat.png", "name": "Bank Rakyat"},
    {
      "id": '5',
      "image": "assets/banks/bsn.png",
      "name": "Bank Simpanan Nasional"
    },
    {"id": '6', "image": "assets/banks/cimb.png", "name": "CIMB Bank"},
    {
      "id": '7',
      "image": "assets/banks/hong-leong-connect.png",
      "name": "Hong Leong Bank"
    },
    {"id": '8', "image": "assets/banks/hsbc.png", "name": "HSBC"},
    {"id": '9', "image": "assets/banks/maybank.png", "name": "MayBank2U"},
    {
      "id": '10',
      "image": "assets/banks/public-bank.png",
      "name": "Public Bank"
    },
    {"id": '11', "image": "assets/banks/rhb-now.png", "name": "RHB NOW"},
    {
      "id": '12',
      "image": "assets/banks/standardchartered.png",
      "name": "Standard Chartered"
    },
    {
      "id": '13',
      "image": "assets/banks/uob.png",
      "name": "United Oversea Bank"
    },
    {"id": '14', "image": "assets/banks/ocbc.png", "name": "OCBC Bank"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank Demo App'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: DropdownButtonHideUnderline(
                  child: ButtonTheme(
                    alignedDropdown: true,
                    child: DropdownButton<String>(
                      isDense: true,
                      hint: new Text("Select Bank"),
                      value: _selected,
                      onChanged: (String newValue) {
                        setState(() {
                          _selected = newValue;
                        });

                        print(_selected);
                      },
                      items: _myJson.map((Map map) {
                        return new DropdownMenuItem<String>(
                          value: map["id"].toString(),
                          // value: _mySelection,
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                map["image"],
                                width: 25,
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(map["name"])),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
