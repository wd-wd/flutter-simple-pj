import 'package:flutter/material.dart';
import 'package:flutter_simple_pj_init/home/home.dart';
import 'package:flutter_simple_pj_init/hot/hot.dart';
import 'package:flutter_simple_pj_init/movie/movie.dart';

//使用BottomNavigationBar实现底部tab切换
class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  List<Widget> _widgetList = List();
  int _currentIndex = 0;

  @override
  void initState() {
    _widgetList
      ..add(HomePage(type: 'home'))
      ..add(MoviePage(
        type: "movie",
      ))
      ..add(HotPage(
        type: "hot",
      ))
    ..add(HotPage(
      type: "hot",
    ));
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetList[_currentIndex],
      //注意item长度要大于一和小程序一样，不然会报错
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(icon: Icon(Icons.movie), title: Text('电影')),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter), title: Text('hot')),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
