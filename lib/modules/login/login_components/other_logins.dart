import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/components.dart';
import '../../../shared/constants.dart';

class OtherLogins extends StatelessWidget {
  const OtherLogins({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialButton.icon(
          text: "Sign In With Google",
          iconColor: Colors.red,
          icon: FontAwesomeIcons.google,
          borderRadius: isIos ? 8 : 24,
          onPress: () {},
        ),
        const SizedBox(height: 19),
        SocialButton.icon(
          text: "Sign In With Apple",
          icon: FontAwesomeIcons.apple,
          borderRadius: isIos ? 8 : 24,
          onPress: () {},
        ),
      ],
    );
  }
}
