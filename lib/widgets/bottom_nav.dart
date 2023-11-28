import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trolly_revamp/utils/colors.dart';
import 'package:trolly_revamp/utils/constatnt.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        homeIC,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Home',
                        style: GoogleFonts.hindMadurai(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.orange),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        categoriesIC,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Categories',
                        style: GoogleFonts.hindMadurai(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        cartIC,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Cart',
                        style: GoogleFonts.hindMadurai(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        profileIC,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Profile',
                        style: GoogleFonts.hindMadurai(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
