// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:gedeed/Core/Themes/styles/fonts/text_style.dart';

// class DocLogoDocPicture extends StatelessWidget {
//   const DocLogoDocPicture({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         SvgPicture.asset("assets/svgs/docdoc_logo_low_opacity.svg"),

//         Container(
//           foregroundDecoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.white, Colors.white.withAlpha(0)],
//               begin: Alignment.bottomCenter,
//               end: Alignment.topCenter,
//               stops: [0.14, 0.4],
//             ),
//           ),
//           child: Image.asset("assets/images/doc_person.png"),
//         ),
//         Positioned(
//           bottom: 30,
//           left: 0,
//           right: 0,
//           child: Text(
//             "Best Doctor\nAppointment App",

//             style: TextStyles.font32BlueBold.copyWith(
//               height: 1.47,
//               fontSize: 36,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ],
//     );
//   }
// }
