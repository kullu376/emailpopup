import 'package:flutter/material.dart';
import 'package:flutter_application_1/poupmenu.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int selectItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          leading: MyPopupMenu(onItemSelected: (value) {
            setState(() {
              selectItem = value;
            });
          }),
        ),
        body: ListView(
          children:  [
             if (selectItem == 0 || selectItem == 1)
            const ListTile(
              tileColor: Colors.blue,
              title: Text("Item 1"),
            ),
            if (selectItem == 0 || selectItem == 2)
            const ListTile(
              tileColor: Colors.blue,
              title: Text("Item 2"),
            ),
          ],
        ));
  }
}
