// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:gedeed/Features/Home/UI/Widgets/onBoarding/button_and_text.dart';
// import 'package:gedeed/Features/Home/UI/Widgets/onBoarding/logo_doc_picture.dart';

// import '../../Widgets/onBoarding/logo_and_name.dart';

// class onBoardingScreen extends StatelessWidget {
//   const onBoardingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
//             child: Column(
//               children: [
//                 DocLogoAndName(),
//                 SizedBox(height: 50.h),
//                 DocLogoDocPicture(),
//                 OnBoardingButtonAndText(),
//                 SizedBox(height: 30.h),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:ui';

import 'package:flutter/material.dart';

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

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({Key? key}) : super(key: key);

//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }

class onBoardingScreen extends StatefulWidget {
  onBoardingScreen({super.key});

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  void _nextPage(BuildContext context) {
    if (_currentPage < onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacementNamed(context, '/authStart');
      print("trying to push");
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
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingData.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  final item = onboardingData[index];
                  return Stack(
                    children: [
                      ClipPath(
                        clipper: TopWaveClipper(),
                        child: Image.asset(
                          item.imagePath,
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 80,
                        left: 24,
                        right: 24,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              item.subtitle,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: _skip,
                    child: const Text(
                      "SKIP",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    children: List.generate(
                      onboardingData.length,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              _currentPage == index
                                  ? Colors.white
                                  : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () => _nextPage(context),
                    child: Text(
                      onboardingData[_currentPage].buttonText,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
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
