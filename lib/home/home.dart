import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

var dio = new Dio();

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
  var productList = [];

  @override
  void initState() {
    super.initState();
    getMovieList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(int.parse('0xfff5f5f5'))),
      child: ListView.builder(
          //这个意思是创建列表的条目
          itemCount: productList.length, //这个是代表创建的次数，循环次数
          itemBuilder: (BuildContext context, int index) {
            //这是每个条目的内容
            //定义item的数据变量
            var productItemData = productList[index];
            return Container(
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(6.0))),
              child: Row(
                children: <Widget>[
                  //图片显示，这样写是实现图片圆角的一种方式，通过装饰器
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 15, bottom: 15),
                    width: 108,
                    height: 108,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            productItemData['imgUrl'],
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  ),
                  Container(
                    height:108 ,
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(child: Text(productItemData['spuName'],),
                          width: 230,
                        ),
                        Text(
                          '会员价:${productItemData['spuStyle']['price']['price']/100}',
                          style: TextStyle(color: Colors.red),
                        ),
                        Text('市场价:${productItemData['spuStyle']['secondPrice']['price']/100}',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  getMovieList() async {
    var homeResponse = await dio.get(
        'http://test.api.happygo.com/product/query/spuPage?query.sourceType=7&query.id=422&page=0&size=10&query.isSort=false');
    print(homeResponse);
    setState(() {
      productList = homeResponse.data['data'];
    });
  }
}
