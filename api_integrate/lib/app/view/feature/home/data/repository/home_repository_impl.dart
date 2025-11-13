import 'package:api_integrate/app/core/failure.dart';
import 'package:api_integrate/app/view/feature/home/data/data_source/shorturl_datasource.dart';
import 'package:api_integrate/app/view/feature/home/domain/entity/get_shorturl_entity.dart';
import 'package:api_integrate/app/view/feature/home/domain/repositories/home_repositiories.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImpl extends HomeRepository{
    ShortURLDataSource shortURLDataSource;
    HomeRepositoryImpl({required this.shortURLDataSource});

  @override
  Future<Either<Failure, GetUrlShortEntity>> getShortURL() async{
    var response = await shortURLDataSource.getShortURL();
    if(response.)
  }
    
}