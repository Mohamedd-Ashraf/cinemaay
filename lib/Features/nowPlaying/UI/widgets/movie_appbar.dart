import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/DI/dependency_injection.dart';
import '../../../../Core/NetWorking/user_session.dart';
import '../../../../Core/Themes/colors/colors.dart' show ColorsManager;

class MovieAppBar extends StatelessWidget {
  MovieAppBar({super.key});
  final username = getIt<UserSession>().getUsername();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20.sp,
              backgroundImage: AssetImage('assets/images/user_persona.png'),
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, ${getIt<UserSession>().getUsername()}",
                  style: TextStyle(color: ColorsManager.white, fontSize: 16.sp),
                ),
                Text(
                  "Let's stream your favorite movie",
                  style: TextStyle(color: ColorsManager.grey, fontSize: 12.sp),
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
