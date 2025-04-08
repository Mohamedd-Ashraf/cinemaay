import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Themes/colors/colors.dart';

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
    final ValueNotifier<bool> isPressed = ValueNotifier(false);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ValueListenableBuilder<bool>(
        valueListenable: isPressed,
        builder: (context, pressed, child) {
          final Color bgColor =
              isDisabled
                  ? ColorsManager.darkGrey
                  : (pressed
                      ? ColorsManager.primarySoft.withOpacity(0.5)
                      : (type == ButtonType.filled
                          ? ColorsManager.primarySoft
                          : Colors.transparent));
          final Color borderColor =
              isDisabled ? ColorsManager.darkGrey : ColorsManager.primarySoft;
          final Color textColor = ColorsManager.whiteGrey;

          return ElevatedButton(
            onPressed:
                isDisabled
                    ? null
                    : () {
                      isPressed.value = true;
                      Future.delayed(const Duration(milliseconds: 100), () {
                        isPressed.value = false;
                      });
                      onPressed?.call();
                    },
            style: ElevatedButton.styleFrom(
              backgroundColor: bgColor,
              foregroundColor: textColor,
              padding: _getPadding(),
              minimumSize: Size(width, _getHeight()),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
                side:
                    type == ButtonType.outlined
                        ? BorderSide(color: borderColor, width: 1.5)
                        : BorderSide.none,
              ),
            ),
            child: Row(
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
          );
        },
      ),
    );
  }
}
