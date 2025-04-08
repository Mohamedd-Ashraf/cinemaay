import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gedeed/Core/Themes/styles/fonts/text_style.dart';

class NoSearchResultWidget extends StatelessWidget {
  const NoSearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/search_empty.png', width: 120),
          const SizedBox(height: 20),
          const Text(
            "We Are Sorry, We Can\nNot Find The Movie :(",
            textAlign: TextAlign.center,
            style: TextStyles.h5Medium,
          ),

          const SizedBox(height: 10),
          const Text(
            "Find your movie by Type title,\ncategories, years, etc",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white38, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
