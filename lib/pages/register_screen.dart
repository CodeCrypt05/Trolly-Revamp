import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trolly_revamp/utils/colors.dart';
import 'package:trolly_revamp/utils/constatnt.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final gender = ['Male', 'Female'];
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("Male"), value: "Male"),
      const DropdownMenuItem(child: Text("Female"), value: "Female"),
    ];
    return menuItems;
  }

  String selectedValue = "Select Gender";
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
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
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                buildHeader(),
                const SizedBox(height: 10),
                buildRegisterBox(),
              ],
            ),
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
    return Container(
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
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // color: Colors.redAccent,
            padding: const EdgeInsets.only(top: 28),
            child: Text(
              'Register',
              style: GoogleFonts.hindMadurai(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            // color: Colors.greenAccent,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      hintStyle: GoogleFonts.hindMadurai(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      icon: SvgPicture.asset(
                        userIC,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      hintStyle: GoogleFonts.hindMadurai(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter Your Email',
              hintStyle: GoogleFonts.hindMadurai(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              icon: SvgPicture.asset(
                emailIC,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Confirm Password',
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
          const SizedBox(height: 16),
          Container(
            // color: Colors.amberAccent,
            child: Row(
              children: [
                SvgPicture.asset(
                  genderIC,
                  fit: BoxFit.cover,
                  color: const Color.fromRGBO(39, 39, 39, 0.85),
                ),
                const SizedBox(width: 18),
                Expanded(
                  child: DropdownButton<String>(
                    value: selectedGender,
                    style: GoogleFonts.hindMadurai(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(39, 39, 39, 0.70),
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedGender = newValue;
                      });
                    },
                    underline: Container(
                      height: 1,
                      color: const Color.fromARGB(255, 125, 125, 125),
                    ),
                    hint: const Text(
                      'Selected Gender',
                    ),
                    isExpanded: true,
                    items: <String>['Male', 'Female', 'Other']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 36),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'By signing up you agree to our',
                  style: GoogleFonts.hindMadurai(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: HexColor('#272727'),
                  ),
                ),
                TextSpan(
                  text: ' Terms & Conditions',
                  style: GoogleFonts.hindMadurai(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: HexColor('#272727'),
                      decoration: TextDecoration.underline),
                ),
                TextSpan(
                  text: ' and',
                  style: GoogleFonts.hindMadurai(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: HexColor('#272727'),
                  ),
                ),
                TextSpan(
                  text: ' Privacy Policy',
                  style: GoogleFonts.hindMadurai(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: HexColor('#272727'),
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
          const SizedBox(height: 56),
          SizedBox(
            width: w,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              onPressed: () {},
              child: Text(
                'Sign Up',
                style: GoogleFonts.hindMadurai(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  height: 2.8,
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
                  text: 'Already have an account?',
                  style: GoogleFonts.hindMadurai(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: HexColor('#272727'),
                  ),
                ),
                TextSpan(
                  text: ' Login',
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
          Container(
            alignment: Alignment.topRight,
            child: Text(
              'Skip',
              style: GoogleFonts.hindMadurai(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline),
            ),
          ),
          const SizedBox(height: 36),
        ],
      ),
    );
  }
}
