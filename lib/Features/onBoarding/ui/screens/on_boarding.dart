
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gedeed/Features/onBoarding/ui/widgets/onboarding_controls.dart';
import 'package:gedeed/Features/onBoarding/ui/widgets/onboarding_page_view.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < onboardingData.length - 1) {
      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      Navigator.pushReplacementNamed(context, '/authStart');
    }
  }

  void _skip() {
    _pageController.jumpToPage(onboardingData.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: OnboardingPageView(
                controller: _pageController,
                onPageChanged: (index) => setState(() => _currentPage = index),
              ),
            ),
            OnboardingControls(
              currentPage: _currentPage,
              onNext: _nextPage,
              onSkip: _skip,
            ),
          ],
        ),
      ),
    );
  }
}

class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height * 0.75,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class OnboardingItem {
  final String title;
  final String subtitle;
  final String buttonText;
  final String imagePath;

  const OnboardingItem({
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.imagePath,
  });
}

const List<OnboardingItem> onboardingData = [
  OnboardingItem(
    title: "OFFLINE",
    subtitle:
        "Watch your favorite film anywhere without an internet connection",
    buttonText: "NEXT",
    imagePath: "assets/offline_image.png",
  ),
  OnboardingItem(
    title: "FIND MOVIE",
    subtitle: "Watch and find movies that bring your mood back",
    buttonText: "NEXT",
    imagePath: "assets/find_movie_image.png",
  ),
  OnboardingItem(
    title: "INVITE FRIENDS",
    subtitle:
        "Create personal movie night space or accept your friends invitation!",
    buttonText: "LET'S START",
    imagePath: "assets/invite_friends_image.png",
  ),
];