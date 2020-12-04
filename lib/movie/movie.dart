import 'package:flutter/material.dart';

class MoviePage extends StatefulWidget {
  final String type;
  MoviePage({Key key, @required this.type}) : super(key: key);
  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {

    return Container(
        alignment: Alignment.center,
        child: Text('电影列表'+widget.type),);
  }
}
