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
      drawer: MyDrawer(), //左边栏
      endDrawer: MyDrawer(), //右边栏
      body: MyContent(),
    );
  }
}

//实现内容
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

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text('690931210@qq.com'),
            accountName: Text('大东'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epcZcn3N0bED2vlv02MT4L4mVYdKTdRwgibxaRrIHMVHbe0Uv5X3GclpR7IPtUrQREU6lNp8JL7JUA/132'),
            ),
            //美化组件的装饰，很多组件都有这个属性
            decoration: BoxDecoration(color: Color(int.parse('0xFFF44336'))),
          ),
          ListTile(
            title: Text('个人简介'),
            trailing: Icon(Icons.verified_user),
          ),
          ListTile(
            title: Text('在职公司'),
            trailing: Icon(Icons.settings_input_component),
          ),
          ListTile(
            title: Text('行业背景'),
            trailing: Icon(Icons.style),
          ),
          Divider(),
          ListTile(
            title: Text('设置'),
            trailing: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
