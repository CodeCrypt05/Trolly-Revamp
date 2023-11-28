import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trolly_revamp/data/profile_data.dart';
import 'package:trolly_revamp/models/profile.dart';
import 'package:trolly_revamp/utils/constatnt.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({super.key, required this.informationData});

  final List<List<Profile>> informationData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: informationData.length,
        itemBuilder: (context, outerIndex) {
          List<Profile> innerList = informationData[outerIndex];
          return Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 24, right: 24, top: 24),
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 16, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: innerList.length,
                  itemBuilder: (context, innerIndex) {
                    Profile profile = innerList[innerIndex];
                    return Column(
                      children: [
                        profile.title.isNotEmpty
                            ? SizedBox(
                                width: double.infinity,
                                child: Text(
                                  profile.title,
                                  style: GoogleFonts.hindMadurai(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(39, 39, 39, 0.75),
                                  ),
                                ),
                              )
                            : Container(),
                        const SizedBox(height: 26),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  profile.mainIcon,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  profile.optionText,
                                  style: GoogleFonts.hindMadurai(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(39, 39, 39, 1),
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              arrowsIC,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ],
                    );
                    // return ListTile(
                    //   title: Text(profile.title),
                    //   // leading: Icon(profile.mainIcon),
                    //   subtitle: Text(profile.optionText),
                    //   // trailing: Icon(profile.forwardIcon),
                    // );
                  },
                ),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          );
        });
  }

  // Widget buildData() {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius: BorderRadius.circular(18),
  //     ),
  //     child: Column(
  //       children: [
  //         !profile.title.isEmpty
  //             ? Container(
  //                 child: Text(profile.title),
  //               )
  //             : Container(),
  //         Row(
  //           children: [
  //             Text(profile.optionText),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
