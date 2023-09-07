import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:news_api/news_model.dart';

import 'constants.dart';

class ApiService{
  Future<NewsModel?> getTopNews() async{
    try{
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.newsEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200){
        NewsModel _model = newsModelFromJson(response.body);
        return _model;
      }
    }catch(e){
      log(e.toString());
    }
  }
}