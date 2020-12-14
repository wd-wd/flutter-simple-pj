class HomeDTO{
  List<HomeDataDTO> data;
  HomeDTO({this.data});

 factory HomeDTO.fromJson(Map<String,dynamic> parsedJson){
   return HomeDTO(
     data: (parsedJson['data'] as List).map((e) => HomeDataDTO.fromJson(e)).toList(),
   );
 }
}
class HomeDataDTO{
  String spuName;
  String imgUrl;
  SpuStyle spuStyle;
  HomeDataDTO({this.spuName,this.imgUrl,this.spuStyle});
  factory HomeDataDTO.fromJson(Map<String,dynamic> parsedJson){
    return HomeDataDTO(
      spuName: parsedJson['spuName'],
      imgUrl: parsedJson['imgUrl'],
      spuStyle:SpuStyle.fromJson(parsedJson['spuStyle']) ,
    );
  }
}
class SpuStyle{
Price price;
Price secondPrice;
SpuStyle({this.price,this.secondPrice});
  factory SpuStyle.fromJson(Map<String,dynamic> parsedJson){
  return SpuStyle(
      price:Price.fromJson(parsedJson['price']),
      secondPrice:Price.fromJson(parsedJson['secondPrice']));
  }
}
class Price{
  int price;
  Price({this.price});
  factory Price.fromJson(Map<String, dynamic> parsedJson){

    return Price(price:parsedJson['price']);
  }
}