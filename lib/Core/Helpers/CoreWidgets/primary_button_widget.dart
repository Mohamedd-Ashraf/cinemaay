import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart';

import '../../Themes/styles/fonts/text_style.dart';

enum ButtonSize { extraSmall, small, medium, large, extraLarge }

enum ButtonType { filled, outlined, text }

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final ButtonSize size;
  final double height;
  final double width;
  final ButtonType type;
  final bool disabled;
  final bool hasIcon;

  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.size = ButtonSize.medium,
    this.type = ButtonType.filled,
    this.disabled = false,
    this.hasIcon = false,
    required this.height,
    required this.width,
  });

  double _getHeight() {
    switch (size) {
      case ButtonSize.extraLarge:
        return 65;
      case ButtonSize.large:
        return 48;
      case ButtonSize.medium:
        return 40;
      case ButtonSize.small:
        return 36;
      case ButtonSize.extraSmall:
        return 32;
    }
  }

  EdgeInsets _getPadding() {
    switch (size) {
      case ButtonSize.extraLarge:
        return EdgeInsets.symmetric(horizontal: 70.h);
      case ButtonSize.large:
        return EdgeInsets.symmetric(horizontal: 130.h);
      case ButtonSize.medium:
        return EdgeInsets.symmetric(horizontal: 100.h);
      case ButtonSize.small:
        return EdgeInsets.symmetric(horizontal: 35.h);
      case ButtonSize.extraSmall:
        return EdgeInsets.symmetric(horizontal: 16);
    }
  }

  TextStyle _getTextStyle() {
    switch (size) {
      case ButtonSize.extraLarge:
        return TextStyles.h3Semibold;
      case ButtonSize.large:
        return TextStyles.h5Semibold;
      case ButtonSize.medium:
        return TextStyles.h6Semibold;
      case ButtonSize.small:
      case ButtonSize.extraSmall:
        return TextStyles.h7Semibold;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDisabled = disabled || onPressed == null;
    final Color bgColor =
        isDisabled
            ? ColorsManager.darkGrey
            : (type == ButtonType.filled
                ? ColorsManager.primarySoft
                : Colors.transparent);
    final Color borderColor =
        isDisabled ? ColorsManager.darkGrey : ColorsManager.primarySoft;
    final Color textColor = ColorsManager.whiteGrey;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: isDisabled ? null : onPressed,
        child: Container(
          height: _getHeight(),
          width: width,
          padding: _getPadding(),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(40),
            border:
                type == ButtonType.outlined
                    ? Border.all(color: borderColor, width: 1.5)
                    : null,
          ),
          child: Row(
            // mainAxisSize: MainAxisSize.,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (hasIcon)
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.play_arrow, size: 16, color: textColor),
                ),
              Text(label, style: _getTextStyle().copyWith(color: textColor)),
            ],
          ),
        ),
      ),
    );
  }
}
