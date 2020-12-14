import 'package:flutter_simple_pj_init/http/http_manage.dart';

  Future getHome() async{
   var response= await HttpManage().dio.get(
        '/product/query/spuPage?query.sourceType=7&query.id=422&page=0&size=10&query.isSort=false');
    return response.data;
  }