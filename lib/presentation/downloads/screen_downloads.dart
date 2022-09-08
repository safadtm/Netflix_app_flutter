import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/app_bar._widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);

  final List imageList = [
    "https://image.tmdb.org/t/p/original/wigZBAmNrIhxp2FNGOROUAeHvdh.jpg",
    "https://image.tmdb.org/t/p/original/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg",
    "https://image.tmdb.org/t/p/original/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: "Downloads",
        ),
      ),
      body: ListView(
        children: [
          _SmartDownloads(),
          const Text(
            'Introducing Downloads for you',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kWhiteColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight,
          const Text(
            'We will download a personlised selection of\n movies and shows for you so there is always\n something to watch on your\n device',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          kHeight,
          SizedBox(
            width: size.width,
            height: size.height,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: size.width * 0.4,
                    backgroundColor: Colors.grey.withOpacity(0.5),
                  ),
                ),
                DownloadsImageWidget(
                  imageList: imageList[0],
                  margin: const EdgeInsets.only(
                    left: 130,
                    bottom: 50,
                  ),
                  angle: 20,
                  size: Size(size.width * 0.4, size.width * 0.58),
                ),
                DownloadsImageWidget(
                  imageList: imageList[1],
                  margin: const EdgeInsets.only(
                    right: 130,
                    bottom: 50,
                  ),
                  angle: -20,
                  size: Size(size.width * 0.4, size.width * 0.58),
                ),
                DownloadsImageWidget(
                  imageList: imageList[2],
                  radius: 8,
                  margin: const EdgeInsets.only(bottom: 10),
                  size: Size(size.width * 0.45, size.width * 0.65),
                ),
              ],
            ),
          ),
          MaterialButton(
            color: kButtonColorBlue,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Set up',
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          MaterialButton(
            color: kButtonColorWhite,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'See what you can download',
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _SmartDownloads() {
    return Row(
      children: const [
        kWidth,
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kWidth,
        Text('Smart Downloads'),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          margin: margin,
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            //  color: Colors.white30,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageList,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
