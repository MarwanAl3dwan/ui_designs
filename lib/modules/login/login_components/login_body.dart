import 'package:flutter/material.dart';

import '../../../shared/components.dart';
import '../../register/register_screen.dart';
import 'login_form.dart';
import 'other_logins.dart';
import 'welcome_section.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Center(
          child: Column(
            children: [
              const WelcomeSection(),
              const SizedBox(height: 19),
              const LoginForm(),
              const SizedBox(height: 19),
              Text(
                "Or",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 19),
              const OtherLogins(),
              const SizedBox(height: 19),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have an Account?",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  CustomTextButton(
                    onPress: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const RegisterScreen()),
                          (route) => false);
                    },
                    text: " Sign Up",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: Theme.of(context).primaryColor),
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
