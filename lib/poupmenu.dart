import 'package:flutter/material.dart';

class MyPopupMenu extends StatefulWidget {
  final ValueChanged<int> onItemSelected;
  MyPopupMenu({required this.onItemSelected});
  @override
  _MyPopupMenuState createState() => _MyPopupMenuState();
}

class _MyPopupMenuState extends State<MyPopupMenu> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry>[
          const PopupMenuItem(
            value: 1,
            child: Text("Item 1"),
          ),
          const PopupMenuItem(
            value: 2,
            child: Text("Item 2"),
          ),
          const PopupMenuItem(
            value: 0,
            child: Text("Clear"),
          ),
        ];
      },
      onSelected: (value) {
        print("Selected item: $value");
        setState(() {
          selectedItem = value;
        });
        widget.onItemSelected(selectedItem);
      },
    );
  }
}
