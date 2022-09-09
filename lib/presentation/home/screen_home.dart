import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/number_card.dart';
import 'package:netflix_app/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_app/presentation/widgets/main_title.dart';

import '../widgets/main_card.dart';
import '../widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainTitleCard(title: 'Released in the past year'),
              MainTitleCard(title: 'Trending Now'),
              NumberTileCardList(),
              MainTitleCard(title: 'Tense Dramas'),
              MainTitleCard(title: 'South Indian Now'),
            ],
          ),
        ),
      ),
    );
  }
}
