import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            buildProfileHeader(),
          ],
        ),
      ),
    );
  }

  Widget buildProfileHeader() {
    return Container(
      color: Colors.blue,
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 83,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 36, top: 10, right: 24),
            padding: const EdgeInsets.only(left: 68, top: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Vivi Boney',
                  style: GoogleFonts.hindMadurai(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '+249 123456789',
                  style: GoogleFonts.hindMadurai(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(39, 39, 39, 0.75),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 83,
            width: 83,
            margin: const EdgeInsets.only(top: 10, right: 24),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.redAccent,
              border: Border.all(
                color: Colors.blue,
                style: BorderStyle.solid,
                width: 4,
              ),
            ),
          )
        ],
      ),
    );
  }
}
