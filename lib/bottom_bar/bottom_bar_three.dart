import 'package:flutter/material.dart';
import 'package:flutter_simple_pj_init/home/home.dart';
import 'package:flutter_simple_pj_init/hot/hot.dart';
import 'package:flutter_simple_pj_init/movie/movie.dart';

class BottomBarClickWidget extends StatefulWidget {
  @override
  _BottomBarClickWidgetState createState() => _BottomBarClickWidgetState();
}

class _BottomBarClickWidgetState extends State<BottomBarClickWidget> {
  //bod内容数组
  List<Widget> _widgetList=List();

  //当前选中的哪一个body
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _widgetList..add(HomePage(type: "home",))
      ..add(MoviePage(type: "movie",))
      ..add(HotPage(type: "hot",));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetList[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                _onTap(0);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: getCurrentColor(0),
                  ),
                  Text(
                    '首页',
                    style: TextStyle(color: getCurrentColor(0)),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                _onTap(1);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.movie,
                    color: getCurrentColor(1),
                  ),
                  Text(
                    '影视',
                    style: TextStyle(color: getCurrentColor(1)),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                _onTap(2);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.movie_filter,
                    color: getCurrentColor(2),
                  ),
                  Text(
                    'hot',
                    style: TextStyle(color: getCurrentColor(2)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //给点击添加方法,参数index
  void _onTap(int index) {
    //防止重复点击
    if (_currentIndex != index) {
      //因为是有状态的所以要加
      setState(() {
        _currentIndex = index;
      });
    }
  }
  //颜色切换的方法返回值Color
Color getCurrentColor(int index){
    return _currentIndex==index?Theme.of(context).primaryColor:Colors.black;
}

}
