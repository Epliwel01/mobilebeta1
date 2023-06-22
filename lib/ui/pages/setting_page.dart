import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/auth_cubit.dart';
import '../../cubit/page_cubit.dart';
import '../widgets/custom_bottom.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kRedColor,
              content: Text(state.error),
            ),
          );
        } else if (state is AuthInitial) {
          context.read<PageCubit>().setPage(0);
          Navigator.pushNamedAndRemoveUntil(
              context, '/sign-in', (route) => false);
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Stack(
          children: [
            Positioned(
              top: 50,
              right: 17,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'M o v i e T i x',
                    style: purpleTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: extrabold,
                    ),
                  ),
                  SizedBox(height: 3),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 24,
                          color: kBlackColor,
                        ),
                        SizedBox(width: 4),
                        Text('Settings',
                            style: blackTextStyle.copyWith(
                              fontSize: 17,
                              fontWeight: regular,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16, top: 80, right: 16),
              child: ListView(
                children: [
                  Text(
                    "ACCOUNT",
                    style: blackTextStyle.copyWith(
                      fontSize: 17,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/profile_vektor.png',
                          width: 24,
                          height: 24,
                          color: kPrimaryColor,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Profile",
                                style: blackTextStyle.copyWith(
                                  fontSize: 15,
                                  fontWeight: regular,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: kBlackColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: 1,
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/bookstore_vektor.png',
                          width: 24,
                          height: 24,
                          color: kPrimaryColor,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bookstore",
                                style: blackTextStyle.copyWith(
                                  fontSize: 15,
                                  fontWeight: regular,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: kBlackColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: 1,
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/gps_vektor.png',
                          width: 24,
                          height: 24,
                          color: kPrimaryColor,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Turn on Location",
                                style: blackTextStyle.copyWith(
                                  fontSize: 15,
                                  fontWeight: regular,
                                ),
                              ),
                              Switch(
                                value: true,
                                activeColor: kPrimaryColor,
                                onChanged: (bool val) {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "NOTIFICATIONS",
                    style: blackTextStyle.copyWith(
                      fontSize: 17,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/activities_vektor.png',
                          width: 24,
                          height: 24,
                          color: kPrimaryColor,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Activities notifications",
                                style: blackTextStyle.copyWith(
                                  fontSize: 15,
                                  fontWeight: regular,
                                ),
                              ),
                              Switch(
                                value: true,
                                activeColor: kPrimaryColor,
                                onChanged: (bool val) {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: 1,
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/send_vektor.png',
                          width: 24,
                          height: 24,
                          color: kPrimaryColor,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Email notifications",
                                style: blackTextStyle.copyWith(
                                  fontSize: 15,
                                  fontWeight: regular,
                                ),
                              ),
                              Switch(
                                value: false,
                                activeColor: kPrimaryColor,
                                onChanged: (bool val) {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "SECURITY",
                    style: blackTextStyle.copyWith(
                      fontSize: 17,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/sign_vektor.png',
                          width: 24,
                          height: 24,
                          color: kPrimaryColor,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sign in with face ID",
                                style: blackTextStyle.copyWith(
                                  fontSize: 15,
                                  fontWeight: regular,
                                ),
                              ),
                              Switch(
                                value: true,
                                activeColor: kPrimaryColor,
                                onChanged: (bool val) {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: 1,
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/lock_vektor.png',
                          width: 24,
                          height: 24,
                          color: kPrimaryColor,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Change Password",
                                style: blackTextStyle.copyWith(
                                  fontSize: 15,
                                  fontWeight: regular,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: kBlackColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: 1,
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/privacy_vektor.png',
                          width: 24,
                          height: 24,
                          color: kPrimaryColor,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Privacy",
                                style: blackTextStyle.copyWith(
                                  fontSize: 15,
                                  fontWeight: regular,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: kBlackColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: 1,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: CustomButton(
                      title: 'Sign Out',
                      onPressed: () {
                        context.read<AuthCubit>().signOut();
                      },
                      width: 220,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
