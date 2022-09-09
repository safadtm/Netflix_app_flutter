import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRaduis10,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://www.themoviedb.org/t/p/w440_and_h660_face/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg'),
        ),
      ),
    );
  }
}
