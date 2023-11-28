import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trolly_revamp/utils/constatnt.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return buildGridView();
  }

  Widget buildGridView() {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, top: 24),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          mainAxisExtent: 150,
        ),
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.amberAccent,
            ),
            child: Column(
              children: [
                Container(
                  color: Colors.blueAccent,
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    'Drinks',
                    style: GoogleFonts.hindMadurai(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.pinkAccent,
                      width: double.infinity,
                      child: Image.asset(
                        grocery,
                        fit: BoxFit.cover,
                      )),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
