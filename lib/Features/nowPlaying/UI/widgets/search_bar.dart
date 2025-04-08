import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MovieSearchBar extends StatelessWidget {
  final void Function(String)? onChanged;
  final VoidCallback? onFilterTap;

  const MovieSearchBar({
    Key? key,
    this.onChanged,
    this.onFilterTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF232333), // Dark background
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.white54, size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              onChanged: onChanged,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: 'Searc a title..',
                hintStyle: TextStyle(color: Colors.white54),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 24,
            width: 1,
            color: Colors.white24,
          ),
          IconButton(
            onPressed: onFilterTap,
            icon: const Icon(Icons.tune, color: Colors.white, size: 20),
            padding: const EdgeInsets.only(left: 8),
          ),
        ],
      ),
    );
  }
}
