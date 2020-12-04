import 'package:flutter/material.dart';

class HotPage extends StatefulWidget {
  final String type;

  HotPage({Key key, @required this.type}) : super(key: key);
  @override
  _HotPageState createState() => _HotPageState();
}

class _HotPageState extends State<HotPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('热映电影'+widget.type),
    );
  }
}
