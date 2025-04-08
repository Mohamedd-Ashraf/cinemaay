import 'package:flutter/material.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final categories = ["All", "Comedy", "Animation", "Dokumenter"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () => setState(() => selectedIndex = index),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color:
                      isSelected
                          ? ColorsManager.primarySoft
                          : ColorsManager.primaryDark,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: ColorsManager.primarySoft),
                ),
                child: Center(
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      color:
                          isSelected
                              ? ColorsManager.primaryDark
                              : ColorsManager.white,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
