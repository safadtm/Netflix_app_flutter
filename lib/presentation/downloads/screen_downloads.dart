import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/widgets/app_bar._widget.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(),
      ),
      body: Text('Downloads'),
    );
  }
}
