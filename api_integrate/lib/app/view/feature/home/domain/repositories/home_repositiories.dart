import 'package:api_integrate/app/core/failure.dart';
import 'package:api_integrate/app/view/feature/home/domain/entity/get_shorturl_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository{
Future<Either<Failure,GetUrlShortEntity>> getShortURL();
}