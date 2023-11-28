import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trolly_revamp/data/profile_data.dart';
import 'package:trolly_revamp/presentation/widgets/information_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(246, 247, 242, 1),
        appBar: AppBar(
          title: Text(
            'Profile',
            style: GoogleFonts.hindMadurai(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: InformationCard(informationData: informationData),
      ),
    );
  }
}
