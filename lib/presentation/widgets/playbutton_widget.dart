import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

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
