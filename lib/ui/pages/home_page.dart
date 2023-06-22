import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/destination_card.dart';
import '../widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                top: 30,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Howdy,\n${state.user.name}',
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semibold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Have a nice day',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_profile.png',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                title: 'Ada Cinta Di SMA',
                city: 'Indoonesia',
                imageUrl: 'assets/image_movie1.png',
                rating: 4.8,
              ),
              DestinationCard(
                title: 'Mencuri Raden',
                city: 'Indonesia',
                imageUrl: 'assets/image_movie2.png',
                rating: 4.7,
              ),
              DestinationCard(
                title: 'Suster Keramas 2',
                city: 'Indonesia',
                imageUrl: 'assets/image_movie3.png',
                rating: 4.8,
              ),
              DestinationCard(
                title: 'Warkop DKI',
                city: 'Indonesia',
                imageUrl: 'assets/image_movie4.png',
                rating: 5.0,
              ),
              DestinationCard(
                title: 'My Sassy Girl',
                city: 'Indonesia',
                imageUrl: 'assets/image_movie5.png',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semibold,
              ),
            ),
            DestinationTile(
              name: 'Jakarta Vs Everybody',
              city: 'Indonesia',
              imageUrl: 'assets/image_movie6.png',
              rating: 4.8,
            ),
            DestinationTile(
              name: 'Mencuri Raden Saleh',
              city: 'Indonesia',
              imageUrl: 'assets/image_movie7.png',
              rating: 4.7,
            ),
            DestinationTile(
              name: 'Ada Cinta Di SMA',
              city: 'Indonesia',
              imageUrl: 'assets/image_movie8.png',
              rating: 4.8,
            ),
            DestinationTile(
              name: 'Payung Teduh',
              city: 'Indonesia',
              imageUrl: 'assets/image_movie9.png',
              rating: 4.5,
            ),
            DestinationTile(
              name: 'Dilan 1990',
              city: 'Indonesia',
              imageUrl: 'assets/image_movie10.png',
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestination(),
      ],
    );
  }
}
