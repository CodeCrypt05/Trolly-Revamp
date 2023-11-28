import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trolly_revamp/models/deal_header.dart';
import 'package:trolly_revamp/utils/colors.dart';

class DealsHeader extends StatelessWidget {
  const DealsHeader({super.key, required this.dealHeaderData});

  final DealHeaderData dealHeaderData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Deal of the day Heading
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  dealHeaderData.headerText,
                  style: GoogleFonts.hindMadurai(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 8),
                SvgPicture.asset(
                  dealHeaderData.headerIcon!,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Text(
              'See all',
              textAlign: TextAlign.right,
              style: GoogleFonts.hindMadurai(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.orange),
            ),
          ],
        ),
        // Deal of the day Cards
      ],
    );
  }
}
