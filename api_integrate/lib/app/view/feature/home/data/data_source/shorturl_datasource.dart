import 'dart:html';
import 'package:http/http.dart' as http;
import 'package:api_integrate/app/core/failure.dart';
import 'package:api_integrate/app/view/feature/home/domain/entity/get_shorturl_entity.dart';
import 'package:api_integrate/app/view/feature/home/domain/repositories/home_repositiories.dart';
import 'package:dartz/dartz.dart';

abstract class ShortURLDataSource{
  Future<Either<Failure,GetUrlShortEntity>> getShortURL();
}

class ShortUrlDataSourceImpl extends HomeRepository{
  var Client = http.Client();
  @override
  Future<Either<Failure, GetUrlShortEntity>> getShortURL() async{
    try{
      const baseUrl = "http://localhost:3000/shorten";
      final url = Uri.parse(baseUrl).replace(queryParameters:{
        "url":""
      });
      final response = await Client.get(url);
      return response.body;
    }catch(e){
     print("enter datasource catch ${e.toString()}");
    }
  }

}