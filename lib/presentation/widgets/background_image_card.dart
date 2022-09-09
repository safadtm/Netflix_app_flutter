import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/home/screen_home.dart';
import 'package:netflix_app/presentation/widgets/custom_button_widget.dart';
import 'package:netflix_app/presentation/widgets/playbutton_widget.dart';

import '../../core/constants.dart';

class BackgroundImageCard extends StatelessWidget {
  const BackgroundImageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
