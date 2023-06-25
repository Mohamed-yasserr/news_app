import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/model/NewsResponse.dart';
import 'package:news_app/model/SourceResponse.dart';

class ApiManger{
 static const String baseUrl ="newsapi.org";
 static const String apiKey= "1614036954804971928baca6c48d85ce";


  static Future<SourceResponse> getSources() async{

   var url= Uri.https(baseUrl,"/v2/top-headlines/sources",{
     'apiKey': apiKey,
    });
    try{
     var response =await http.get(url);
     var bodyString= response.body;
     var json = jsonDecode(bodyString);
     var sourceResponse= SourceResponse.fromJson(json);
     return sourceResponse;
    }catch (e){
     throw e;
    }




   }

   static Future<NewsResponse> getNews(String sourceId)async{
   //https://newsapi.org/?q=bitcoin&apiKey=1614036954804971928baca6c48d85ce
  var url= Uri.https(baseUrl,'v2/everything',{
   'apiKey':apiKey,
   'sources':sourceId
  });
    var response =await http.get(url);
    var bodyString = response.body;
    var json= jsonDecode(bodyString);
    var newsResponse = NewsResponse.fromJson(json);
    return newsResponse;
  }

 }