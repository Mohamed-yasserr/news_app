import 'package:flutter/material.dart';
import 'package:news_app/News/news_item.dart';
import 'package:news_app/api_manger/api_manger.dart';
import 'package:news_app/model/SourceResponse.dart';
import 'package:news_app/widgets/tab_item.dart';

class TabContainer extends StatefulWidget {
  List<Source> sourcesList;

  TabContainer({required this.sourcesList});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: DefaultTabController(
            length: widget.sourcesList.length,
            child: TabBar(
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                isScrollable: true,
                indicatorColor: Colors.transparent,
                tabs: widget.sourcesList
                    .map((source) => TabItem(
                        source: source,
                        isSelected: selectedIndex ==
                            widget.sourcesList.indexOf(source)))
                    .toList()),
          ),
        ),
        FutureBuilder(
          future: ApiManger.getNews(widget.sourcesList[selectedIndex].id ?? ''),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Text('Somthing Went Wrong');
            }
            if (snapshot.data?.status != 'ok') {
              return Text(snapshot.data?.message ?? '');
            }
            var newsList = snapshot.data?.articles ?? [];
            return Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) => NewsItem(news: newsList[index]),
              itemCount: newsList.length,
            ));
          },
        ),
      ],
    );
  }
}
