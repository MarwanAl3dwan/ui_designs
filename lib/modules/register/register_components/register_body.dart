import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/components.dart';
import '../../../shared/styles/colors.dart';
import '../../login/login_screen.dart';
import 'register_form.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create an Account',
                // style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 19),
              const RegisterForm(),
              const SizedBox(height: 19),
              Center(
                child: Text(
                  "Or",
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              const SizedBox(height: 19),
              SocialButton.icon(
                text: "Sign Up With Google",
                icon: FontAwesomeIcons.google,
                iconColor: Colors.red,
                onPress: () {},
              ),
              const SizedBox(height: 19),
              SocialButton.icon(
                text: "Sign Up With Apple",
                icon: FontAwesomeIcons.apple,
                // iconColor: Colors.black,
                onPress: () {},
              ),
              const SizedBox(height: 19),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have an Account?",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  CustomTextButton(
                    onPress: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const LoginScreen()),
                          (route) => false);
                    },
                    text: " Sign In",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: kPrimaryLightColor),
                  ),
                ],
              ),
              const SizedBox(height: 19),
            ],
          ),
        ),
      ),
    );
  }
}
