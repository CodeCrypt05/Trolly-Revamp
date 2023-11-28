import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trolly_revamp/utils/constatnt.dart';

class LanguageTranslationButton extends StatelessWidget {
  const LanguageTranslationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(
          languageTranslatIC,
          fit: BoxFit.cover,
        ),
        Text(
          'EN',
          style: GoogleFonts.hindMadurai(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline),
        ),
      ],
    );
  }
}
