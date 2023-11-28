import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trolly_revamp/utils/constatnt.dart';
import 'package:trolly_revamp/widgets/bottom_nav.dart';
import 'package:trolly_revamp/widgets/category_panel.dart';
import 'package:trolly_revamp/widgets/language_translation_btn.dart';
import 'package:trolly_revamp/widgets/search_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 12.0,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Column(
                children: [
                  buildAppHeaders(),
                  const SearchBox(),
                  const SizedBox(height: 22),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.amberAccent,
                    child: buildCategoriesPanel(),
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }

  Widget buildAppHeaders() {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LanguageTranslationButton(),
          Text(
            'Trolly',
            style: GoogleFonts.lemonada(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          SvgPicture.asset(
            profile,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  Widget buildCategoriesPanel() {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return CategoryPanel();
        },
      ),
    );
  }
}
