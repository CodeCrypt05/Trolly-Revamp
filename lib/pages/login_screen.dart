import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trolly_revamp/utils/colors.dart';
import 'package:trolly_revamp/utils/constatnt.dart';
import 'package:trolly_revamp/widgets/language_translation_btn.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            SvgPicture.asset(
              registerBackground,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                buildHeader(),
                const SizedBox(height: 10),
                buildRegisterBox(),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
              width: double.infinity,
              height: 60,
              alignment: Alignment.topRight,
              child: const LanguageTranslationButton(),
            )
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return SizedBox(
      height: 200,
      width: 200,
      child: Image.asset(
        trollyLogo,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget buildRegisterBox() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 24, right: 24),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(44),
            topRight: Radius.circular(44),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 12.0,
              spreadRadius: 2,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              // color: Colors.redAccent,
              padding: EdgeInsets.only(top: 28),
              child: Text(
                'Login',
                style: GoogleFonts.hindMadurai(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 40),
            const SizedBox(height: 12),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: '+249 | Enter Your Mobile Number',
                hintStyle: GoogleFonts.hindMadurai(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                icon: SvgPicture.asset(
                  phoneIC,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Password',
                hintStyle: GoogleFonts.hindMadurai(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                icon: SvgPicture.asset(
                  lockPasswordIC,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 56),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Login',
                  style: GoogleFonts.hindMadurai(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    height: 2.4,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 36),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account?",
                    style: GoogleFonts.hindMadurai(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: HexColor('#272727'),
                    ),
                  ),
                  TextSpan(
                    text: ' Rgister ',
                    style: GoogleFonts.hindMadurai(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.orange,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 56),
            Expanded(
              child: Container(
                // color: Colors.red,
                alignment: Alignment.bottomRight,
                child: Text(
                  'Skip',
                  style: GoogleFonts.hindMadurai(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            const SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
