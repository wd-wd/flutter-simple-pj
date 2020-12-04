import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            alignment: Alignment.center,
            child: Text('首页'),
          ),
        ),
        body: Center(
          child: Text('主页',
            style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w700,
                fontSize: 20.0
            ),
          ),
        ),
      ),
    );
  }
}

class CommonTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return build(context);

  }
}



