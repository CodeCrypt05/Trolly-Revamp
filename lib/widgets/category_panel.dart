import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trolly_revamp/utils/constatnt.dart';

class CategoryPanel extends StatelessWidget {
  const CategoryPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          groceryImg,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color.fromRGBO(96, 171, 0, 0.05),
          ),
        ),
      ],
    );
  }
}
