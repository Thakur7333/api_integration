import 'package:api_integrate/app/view/feature/home/domain/entity/get_shorturl_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_url_short_response_model.g.dart';

@JsonSerializable()
class GetUrlShortResponseModel{
  String shortUrl;
  GetUrlShortResponseModel({
    required this.shortUrl
  });

  factory GetUrlShortResponseModel.fromJson(Map<String, dynamic> json) => _$GetUrlShortResponseModelFromJson(json);

  Map<String,dynamic> toJson() => _$GetUrlShortResponseModelToJson(this);

  GetUrlShortEntity toEntity(){
    return GetUrlShortEntity(shortUrl: shortUrl);
  }
}