import 'package:flutter/material.dart';

class DemoItem extends StatelessWidget {
  DemoItem() : super();

  _getBottomItem(IconData icon, String text) {
    return new Expanded(
      flex: 1,
      child: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(
              icon,
              size: 16.0,
              color: Colors.grey,
            ),
            new Padding(padding: new EdgeInsets.only(left: 5.0)),
            new Text(
              text,
              style: new TextStyle(color: Colors.grey, fontSize: 14.0),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new TextButton(
          onPressed: () {
            print("点击事件");
          },
          child: new Padding(
            padding:
                new EdgeInsets.only(left: 0, top: 10, right: 10, bottom: 10),
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Container(
                  child: new Text(
                    "这是一点描述",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 14.0,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                  alignment: Alignment.topLeft,
                ),
                new Padding(padding: EdgeInsets.all(10)),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _getBottomItem(Icons.star, "100000000"),
                    _getBottomItem(Icons.link, "100000000"),
                    _getBottomItem(Icons.subject, "100000000"),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
