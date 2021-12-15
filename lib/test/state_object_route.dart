import 'package:flutter/material.dart';

class GetStateObjectRoute extends StatefulWidget {
  const GetStateObjectRoute({Key? key}) : super(key: key);

  @override
  State<GetStateObjectRoute> createState() => _GetStateObjectRouteState();
}

class _GetStateObjectRouteState extends State<GetStateObjectRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("子树中获取State对象"),
      ),
      body: Center(
        child: Column(
          children: [
            Builder(builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    ScaffoldState _state =
                        context.findRootAncestorStateOfType<ScaffoldState>()!;
                    _state.openDrawer();
                  },
                  child: Text("打开抽屉菜单1"));
            })
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
