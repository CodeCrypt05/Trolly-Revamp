import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trolly_revamp/presentation/bloc/tab_switch/tab_switch_bloc.dart';
import 'package:trolly_revamp/presentation/bloc/tab_switch/tab_switch_event.dart';
import 'package:trolly_revamp/presentation/bloc/tab_switch/tab_switch_state.dart';
import 'package:trolly_revamp/presentation/pages/home_screen.dart';
import 'package:trolly_revamp/presentation/pages/profile_screen.dart';
import 'package:trolly_revamp/utils/colors.dart';
import 'package:trolly_revamp/utils/constatnt.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  void getProfilePage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ProfileScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TabSwitchBloc tabSwitch = BlocProvider.of<TabSwitchBloc>(context);
    return BottomAppBar(
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            BlocBuilder<TabSwitchBloc, TabSwitchState>(
              builder: (BuildContext context, state) {
                if (state is InitialTabState) {
                  final position = state.index;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          tabSwitch.add(TabPressed(0));
                        },
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              position == 0 ? homeClickedIC : homeIC,
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
                        onPressed: () {
                          tabSwitch.add(TabPressed(1));
                        },
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              position == 1
                                  ? categoriesClickedIC
                                  : categoriesIC,
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
                        onPressed: getProfilePage,
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
                  );
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
