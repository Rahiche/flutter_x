import 'package:flutter/material.dart';
import 'package:flutter_x/flutter_x.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_x Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'flutter_x Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Center(
          child: Stack(
            children: <Widget>[
//            10.vWidgets(Text("Hi ")),
//            Colors.green.toWidget(100, 100),
//            ["Hello ", "Hi ", "Hola "].toRow().toScrollable(),
//            SingleChildScrollView(
//              child: Row(
//                  children: ["Hello ", "Hi ", "Hola "]
//                      .map((value) => Text(value))
//                      .toList()),
//              scrollDirection: (this is Row) ? Axis.horizontal : Axis.vertical,
//            )

              Colors.red.toWidget(100, 100).rotate().slide().scale()
            ],
          ),
        ),
      ),
    );
  }
}
