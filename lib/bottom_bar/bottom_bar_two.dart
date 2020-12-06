import 'package:flutter/material.dart';
import 'package:flutter_simple_pj_init/home/home.dart';
import 'package:flutter_simple_pj_init/hot/hot.dart';
import 'package:flutter_simple_pj_init/movie/movie.dart';

class BottomNavigationTabWidget extends StatefulWidget {
  @override
  _BottomNavigationTabWidgetState createState() =>
      _BottomNavigationTabWidgetState();
}

class _BottomNavigationTabWidgetState extends State<BottomNavigationTabWidget>
    with SingleTickerProviderStateMixin {
  //Tab页的控制器，可以用来定义Tab标签和内容页的坐标
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          HomePage(
            type: 'home',
          ),
          MoviePage(
            type: 'movie',
          ),
          HotPage(
            type: 'hot',
          )
        ],
      ),
      bottomNavigationBar: Container(
        width: 50,
        color: Color(int.parse('0xffffffff')),
        child: TabBar(
          indicator: BoxDecoration(),
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: '首页',
              icon: Icon(Icons.home),
            ),
            Tab(
              text: '电影',
              icon: Icon(Icons.movie),
            ),
            Tab(
              text: 'hot',
              icon: Icon(Icons.movie_filter),
            ),
          ],
          labelColor: Colors.red,
          unselectedLabelColor: Colors.black,
        ),
      )
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
