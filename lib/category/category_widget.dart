import 'package:flutter/material.dart';
import 'package:news_app/category/category_item_widget.dart';
import 'package:news_app/model/Category_item.dart';
import 'package:news_app/styles/my%20theme.dart';

class CategoryWidget extends StatelessWidget {
  List<CategoryItem> categoriesList =  CategoryItem.getCategoriesList() ;
  Function onCategoryItemCliceked;
  CategoryWidget({required this.onCategoryItemCliceked});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(18),
      child: Column(
        children: [
          Text(
            "Pick your category \n of interest",
            style: TextStyle(
                color: MyTheme.greyColor,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 18,
                mainAxisSpacing: 18,
              ),
              itemBuilder: (context, index) => InkWell(
                onTap: (){
                  onCategoryItemCliceked(index);

                } ,
                child: CategoryItemWidget(
                  categoryItem: categoriesList[index ],
                  index: index,
                ),
              ),
              itemCount:categoriesList.length ,
            ),
          )
        ],
      ),
    );
  }
}
