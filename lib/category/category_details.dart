import 'package:flutter/material.dart';
import 'package:news_app/api_manger/api_manger.dart';
import 'package:news_app/model/SourceResponse.dart';
import 'package:news_app/widgets/Tab_container.dart';

class CategoryDetails extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse>(
      future:ApiManger.getSources() ,
        builder: (context, snapshot) {
         if (snapshot.connectionState ==ConnectionState.waiting){
           return Center(child: CircularProgressIndicator());
         }
         if(snapshot.hasError){
           return Text("something went wrong");
         }
         if(snapshot.data?.status != "ok"){
           return Text(snapshot.data?.message??"");
         }
         var soursesList =snapshot.data?.sources ?? [];
         return TabContainer(sourcesList: soursesList);
        },);
  }
}
