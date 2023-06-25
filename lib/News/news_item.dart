import 'package:flutter/material.dart';
import 'package:news_app/model/NewsResponse.dart';

class NewsItem extends StatelessWidget {
News news;
NewsItem({required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12)
      ),
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch ,
        children: [
          Container(
            child: Image.network(news.urlToImage?? ''),
          ),
          Text(news.author??''),
          Text(news.title??''),
          Text(news.publishedAt??'',textAlign: TextAlign.right),

        ],
      ),
    );
  }
}
