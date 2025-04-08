import 'package:flutter/material.dart';

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
                Text("Hello, Smith",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                Text("Let's stream your favorite movie",
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            )
          ],
        ),
        const Icon(Icons.favorite, color: Colors.redAccent)
      ],
    );
  }
}
