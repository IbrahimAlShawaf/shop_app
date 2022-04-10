import 'package:flutter/material.dart';

import 'category-item.widget.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 10,),
          CategoryItem(image: "assets/images/bike_1.png"),
          SizedBox(width: 10,),
          CategoryItem(image: "assets/images/bike_2.png"),
          SizedBox(width: 10,),
          CategoryItem(image: "assets/images/bike_3.png"),
          SizedBox(width: 10,),
          CategoryItem(image: "assets/images/bike_4.png"),
          SizedBox(width: 10,),
          CategoryItem(image: "assets/images/bike_5.png"),
          SizedBox(width: 10,),
          CategoryItem(image: "assets/images/bike_6.png"),
          SizedBox(width: 10,),
          CategoryItem(image: "assets/images/h1.png"),
          SizedBox(width: 10,),
          CategoryItem(image: "assets/images/h2.png"),
          SizedBox(width: 10,),
          CategoryItem(image: "assets/images/h3.png"),
          SizedBox(width: 10,),
          CategoryItem(image: "assets/images/h4.png"),
          SizedBox(width: 10,),
          CategoryItem(image: "assets/images/h5.png"),
          SizedBox(width: 10,),
          CategoryItem(image: "assets/images/h6.png"),
          SizedBox(width: 10,),
        ],
      ),
    );
  }
}
