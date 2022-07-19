import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_design/shared/components.dart';

class WelcomeScreen extends StatelessWidget {
  final Duration duration = const Duration(milliseconds: 1200);

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: FadeInDown(
                    duration: duration,
                    delay: const Duration(milliseconds: 1800),
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(
                        top: 50,
                        left: 5,
                        right: 5,
                      ),
                      child:
                          Lottie.asset("assets/images/wl.json", animate: true),
                    ),
                  ),
                ),
                Expanded(
                  child: FadeInDown(
                    duration: duration,
                    delay: const Duration(milliseconds: 1600),
                    child: const Text(
                      "Keep",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FadeInDown(
                    duration: duration,
                    delay: const Duration(milliseconds: 1000),
                    child: const Text(
                      "Keep various ways to contact and get in touch easily right from the app.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.2,
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                AdaptiveTextButton(
                  text: "Button",
                  onPressed: () {},
                ),
                const SizedBox(height: 30),
                Expanded(
                  child: FadeInDown(
                    duration: duration,
                    delay: const Duration(milliseconds: 600),
                    child: SocialButton.image(
                      image: 'assets/images/g.png',
                      onPress: () {},
                      text: 'Continue with Google',
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: FadeInDown(
                    duration: duration,
                    delay: const Duration(milliseconds: 200),
                    child: SocialButton.icon(
                      text: "Continue with GitHub",
                      onPress: () {},
                      icon: FontAwesomeIcons.github,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//
//
// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:lottie/lottie.dart';
// import 'package:ui_design/shared/components.dart';
//
// class WelcomeScreen extends StatelessWidget {
//   final Duration duration = const Duration(milliseconds: 1200);
//
//   const WelcomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       // appBar: AppBar(toolbarHeight: 0),
//       body: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         child: Padding(
//           // padding: const EdgeInsets.all(8.0),
//           padding: const EdgeInsets.symmetric(horizontal: 8),
//           child: Container(
//             width: size.width,
//             height: size.height,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 FadeInDown(
//                   duration: duration,
//                   delay: const Duration(milliseconds: 1800),
//                   child: Container(
//                     margin: const EdgeInsets.only(
//                       top: 50,
//                       left: 5,
//                       right: 5,
//                     ),
//                     width: size.width,
//                     height: size.height / 2,
//                     child: Lottie.asset("assets/images/wl.json", animate: true),
//                   ),
//                 ),
//                 const SizedBox(height: 15),
//                 FadeInDown(
//                   duration: duration,
//                   delay: const Duration(milliseconds: 1600),
//                   child: const Text(
//                     "Keep",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 FadeInDown(
//                   duration: duration,
//                   delay: const Duration(milliseconds: 1000),
//                   child: const Text(
//                     "Keep various ways to contact and get in touch easily right from the app.",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         height: 1.2,
//                         color: Colors.grey,
//                         fontSize: 17,
//                         fontWeight: FontWeight.w300),
//                   ),
//                 ),
//                 const SizedBox(height: 40),
//                 FadeInDown(
//                   duration: duration,
//                   delay: const Duration(milliseconds: 600),
//                   child: SocialButton.image(
//                     image: 'assets/images/g.png',
//                     onPress: () {},
//                     text: 'Continue with Google',
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 FadeInDown(
//                   duration: duration,
//                   delay: const Duration(milliseconds: 200),
//                   child: SocialButton.icon(
//                     text: "Continue with GitHub",
//                     onPress: () {},
//                     icon: FontAwesomeIcons.github,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
