import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_design/shared/components.dart';

class MainScreen extends StatelessWidget {
  final Duration duration = const Duration(milliseconds: 1200);

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Container(
        margin: const EdgeInsets.all(8),
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FadeInDown(
              duration: duration,
              delay: const Duration(milliseconds: 1800),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 50,
                  left: 5,
                  right: 5,
                ),
                width: size.width,
                height: size.height / 2,
                child: Lottie.asset("assets/images/wl.json", animate: true),
              ),
            ),
            const SizedBox(height: 15),
            FadeInDown(
              duration: duration,
              delay: const Duration(milliseconds: 1600),
              child: const Text(
                "Keep",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            FadeInDown(
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
            const Spacer(),
            FadeInDown(
              duration: duration,
              delay: const Duration(milliseconds: 600),
              child: SocialButtonImage(
                image: 'assets/images/g.png',
                onPress: () {},
                text: 'Continue with Google',
              ),
              // child: SocialButton(
              //   icon: FontAwesomeIcons.google,
              //   onPress: () {},
              //   text: 'Continue with Google',
              // ),
            ),
            const SizedBox(height: 20),
            FadeInDown(
              duration: duration,
              delay: const Duration(milliseconds: 200),
              // child: SocialButtonImage(
              //   image: 'assets/images/Gt.png',
              //   onPress: () {},
              //   text: 'Continue with GitHub',
              // ),
              child: SocialButton(
                text: "Continue with GitHub",
                onPress: (){},
                icon: FontAwesomeIcons.github,
              ),
              // child: SocialButton(
              //   icon: FontAwesomeIcons.github,
              //   onPress: () {},
              //   text: 'Continue with Google',
              // ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
