import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_app/core/constants.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  final imageUrl =
      'https://www.themoviedb.org/t/p/w500_and_h282_face/jtAI6OJIWLWiRItNSZoWjrsUtmi.jpg';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Top Searches',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
      ],
    );
  }
}
