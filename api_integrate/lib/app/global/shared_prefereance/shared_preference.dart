
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences{
  static SharedPreferences? _pref;

  static Future<void> _init() async {
     _pref ??= await SharedPreferences.getInstance();
  }


  static Future<bool> setShortUrl(String shortUrl)async{
    await _init();
    return  _pref!.setString(shortUrl, shortUrl);
  }

  static Future<String> getShortURL()async{
    await _init();
    return  _pref!.getString(shortUrl) ?? "";
  } 


  static const String shortUrl = "shorturl";
}