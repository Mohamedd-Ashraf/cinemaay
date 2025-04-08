import 'package:flutter/material.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart' show ColorsManager;

class MovieAppBar extends StatelessWidget {
  const MovieAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/user.jpg'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Hello, Smith",
                  style: TextStyle(color: ColorsManager.white, fontSize: 16),
                ),
                Text(
                  "Let's stream your favorite movie",
                  style: TextStyle(color: ColorsManager.grey, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        const Icon(Icons.favorite, color: ColorsManager.red),
      ],
    );
  }
}
