import 'package:flutter/material.dart';

//因为home是要结合接口数据实现的 所以使用有状态的组件
class HomePage extends StatefulWidget {
  //写构造函数，在dart语言中的构造函数写法
//  HomePage({Key key}):super(key:key);
//定义一个参数传递,想要此参数必传必须加@required
  final String type;

  HomePage({Key key, @required this.type}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

//一半写法是下划线加要管理的类名加state
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('首页'+widget.type),
    );
  }
}
