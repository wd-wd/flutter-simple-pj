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
        home: CommonTitle());
  }
}

class CommonTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('电影列表'),
        centerTitle: true,
        //右侧行为按钮
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      //注意脚手架带的组件，不在appbar中可以看源码tips:在appBar中加了actions
      // 后endDrawer不显示,加上leading后drawer不显示
      drawer: Drawer(//左边栏

      ),
      endDrawer: Drawer(//右边栏

      ),
      body: MyContent(),
    );
  }
}

class MyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '主页',
        style: TextStyle(
            color: Colors.blue, fontSize: 28.0, fontWeight: FontWeight.w700),
      ),
    );
  }
}
