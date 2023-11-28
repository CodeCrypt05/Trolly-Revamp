import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trolly_revamp/models/categories.dart';

class CategoryCards extends StatelessWidget {
  const CategoryCards({super.key, required this.categories});
  final CategoriesModel categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: categories.categoryBoxColor,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: Text(
              categories.categoryName,
              style: GoogleFonts.hindMadurai(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Container(
                width: double.infinity,
                child: Image.asset(
                  categories.categoryImages,
                  fit: BoxFit.cover,
                )),
          ),
        ],
      ),
    );
  }
}
