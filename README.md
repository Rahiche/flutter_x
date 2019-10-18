# flutter_x

Use the Power of Dart extensions to build Flutter widgets. most of these extension are just wrapping your widget with another one so instead of trying to compose widgets to add new functionality try to extend it.


### This Project is POC
I am ready to change any API if I find something better
Also I don't agree 100% with the conventions used here
So any contribution is welcome

### This Goal
The goal of this library is not to replace the current widgets comopsiting system. but it can be a good way to protopye your ideas faster.

### Installation 

```yaml
dependencies:
  flutter:
    sdk: flutter
  swiftui:
    git: https://github.com/Rahiche/flutter_x
```


### Sample

```dart
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        10.hWidgets(Text("Hi ")),
        // Row(
        //       children: <Widget>[
        //         for (int i = 0; i < this.toInt(); i++) child,
        //       ],
        //     )

        Colors.green.toWidget(100,100),
        // Container(color: Colors.green, width: 100, height: 100)

        ["Hello ", "Hi ", "Hola "].toRow().toScrollable(),
        // SingleChildScrollView(
        //          child: Row(
        //              children: ["Hello ", "Hi ", "Hola "]
        //                  .map((value) => Text(value))
        //                  .toList()),
        //          scrollDirection: (this is Row) ? Axis.horizontal : Axis.vertical,
        //        )

        Colors.red.toWidget(100, 100).rotate().slide().scale()
        // TODO: I m just lazy to write all of it so now i remember why i created this lib
      ],
    );
  }
```
