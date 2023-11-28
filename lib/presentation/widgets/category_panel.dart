import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trolly_revamp/models/category.dart';

class CategoryPanel extends StatelessWidget {
  const CategoryPanel({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.only(top: 4),
      child: Column(
        children: [
          Image.asset(
            categoryModel.image,
            fit: BoxFit.cover,
            height: 86,
            width: 86,
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: Container(
              width: 120,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: categoryModel.subColor),
              child: Text(
                categoryModel.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: categoryModel.textColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
