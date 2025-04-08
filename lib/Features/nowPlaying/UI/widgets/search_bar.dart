import 'package:flutter/material.dart';
import '../../../../Core/Themes/colors/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieSearchBar extends StatelessWidget {
  final void Function(String)? onChanged;
  final VoidCallback? onFilterTap;

  const MovieSearchBar({Key? key, this.onChanged, this.onFilterTap})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: ColorsManager.primary, 
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: ColorsManager.whiteGrey, size: 20.sp),
          SizedBox(width: 8.w),
          Expanded(
            child: TextField(
              onChanged: onChanged,
              style: TextStyle(color: ColorsManager.white, fontSize: 14.sp),
              decoration: InputDecoration(
                hintText: 'Searc a title..',
                hintStyle: TextStyle(color: ColorsManager.grey, fontSize: 14.sp),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(height: 24.h, width: 1.w, color: Colors.white24),
          IconButton(
            onPressed: onFilterTap,
            icon: Icon(Icons.tune, color: ColorsManager.white, size: 20.sp),
            padding: EdgeInsets.only(left: 8.w),
          ),
        ],
      ),
    );
  }
}
