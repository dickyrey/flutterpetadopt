import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petadoption/constant.dart';
import 'package:petadoption/model/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  CategoryCard({this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        children: [
          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: SizedBox(
              width: 80.0,
              height: 80.0,
              child: Center(
                child: SvgPicture.asset(
                  category.icon,
                  width: 45.0,
                  height: 45.0,
                ),
              ),
            ),
          ),
          Spacer(),
          Text(category.name, style: kSubtitleStyle)
        ],
      ),
    );
  }
}
