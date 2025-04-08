import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart';
import 'package:gedeed/Core/Themes/styles/fonts/text_style.dart';

class BottomNavItem {
  final IconData icon;
  final String label;

  BottomNavItem({required this.icon, required this.label});
}

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemSelected,
  }) : super(key: key);

  final List<BottomNavItem> navItems = [
    BottomNavItem(icon: Icons.home, label: 'Home'),
    BottomNavItem(icon: Icons.search, label: 'Search'),
    BottomNavItem(icon: Icons.download, label: 'Downloads'),
    BottomNavItem(icon: Icons.person, label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      backgroundColor: ColorsManager.primary,
      selectedItemColor: ColorsManager.primarySoft,
      unselectedItemColor: ColorsManager.grey,
      type: BottomNavigationBarType.fixed,
      onTap: onItemSelected,
      items:
          navItems.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;
            final isSelected = index == selectedIndex;

            return BottomNavigationBarItem(
              icon:
                  isSelected
                      ? Container(
                        padding: EdgeInsets.symmetric(
                          // vertical: .h,
                          horizontal: 12.w,
                        ),
                        decoration: BoxDecoration(
                          color: ColorsManager.primarySoft.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(item.icon),
                            SizedBox(width: 4.w),
                            Text(
                              item.label,
                              style: TextStyles.h7Regular.copyWith(
                                fontSize: 8.sp, //TODO
                                color: ColorsManager.primarySoft,
                              ),
                            ),
                          ],
                        ),
                      )
                      : Icon(item.icon),
              label: '',
            );
          }).toList(),
    );
  }
}
