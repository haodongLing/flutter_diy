import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DemoPageState();
  }
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar: new AppBar(
        title: new Text("Title"),
      ),
      body: new ListView.builder(
        itemBuilder: (context, index) {
          return new Card(
            elevation: 5.0,
            shape: new RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            color: Colors.white,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
            child: new Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 80,
              child: new Text("显示文本${index}"),
            ),
          );
        },
        itemCount: 20,
      ),
      floatingActionButton: Builder(builder: (builderContext) {
        return FloatingActionButton(onPressed: () {
          ScaffoldMessenger.of(builderContext)
              .showSnackBar(SnackBar(content: new Text("Snackbar")));
        });
      }),
    );
  }
}
