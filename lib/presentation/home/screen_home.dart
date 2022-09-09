import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/number_card.dart';
import 'package:netflix_app/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_app/presentation/widgets/custom_button_widget.dart';
import 'package:netflix_app/presentation/widgets/main_title.dart';

import '../widgets/main_card.dart';
import '../widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 600,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(kMainImage),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.add,
                        title: 'My List',
                      ),
                      PlayButtonWidget(),
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: 'Info',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          MainTitleCard(title: 'Released in the past year'),
          kHeight,
          MainTitleCard(title: 'Trending Now'),
          kHeight,
          NumberTileCardList(),
          kHeight,
          MainTitleCard(title: 'Tense Dramas'),
          kHeight,
          MainTitleCard(title: 'South Indian Now'),
          kHeight,
        ],
      ),
    );
  }
}

class PlayButtonWidget extends StatelessWidget {
  const PlayButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kWhiteColor),
      ),
      icon: const Icon(
        Icons.play_arrow,
        size: 25,
        color: kBlackColor,
      ),
      label: const Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          'Play',
          style: TextStyle(
            fontSize: 20,
            color: kBlackColor,
          ),
        ),
      ),
    );
  }
}
