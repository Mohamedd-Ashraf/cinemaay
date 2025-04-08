import 'package:flutter/widgets.dart';
import '../screens/on_boarding.dart';
import 'onboarding_content.dart';

class OnboardingPageView extends StatelessWidget {
  final PageController controller;
  final ValueChanged<int> onPageChanged;

  const OnboardingPageView({
    super.key,
    required this.controller,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemCount: onboardingData.length,
      onPageChanged: onPageChanged,
      itemBuilder: (context, index) {
        final item = onboardingData[index];
        return OnboardingContent(item: item);
      },
    );
  }
}
