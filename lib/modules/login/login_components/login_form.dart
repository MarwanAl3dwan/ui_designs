import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../shared/components.dart';
import '../../../shared/constants.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late GlobalKey<FormState> formKey;

  String? email;
  String? password;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AdaptiveTextFormField(
            controller: emailController,
            hintText: "Email",
            prefixIcon: isIos ? CupertinoIcons.mail : Icons.email_outlined,
            validator: (String? value) {
              return emailValidator(email: value!.trim());
            },
          ),
          const SizedBox(height: 19),
          AdaptiveTextFormField(
            controller: passwordController,
            hintText: "Password",
            prefixIcon: isIos ? CupertinoIcons.lock : Icons.lock_outline,
            obscureText: true,
            isLastField: true,
            validator: (String? value) {
              return passwordValidator(password: value!.trim());
            },
            submitField: (String? value) {
              if (formKey.currentState!.validate()) {}
            },
          ),
          const SizedBox(height: 19),
          AdaptiveTextButton(
            onPressed: () {},
            text: "Forgot Password?",
            textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: isIos ? Colors.blue : null,
                ),
          ),
          const SizedBox(height: 19),
          PrimaryButton(
            text: "Sign In",
            onPress: () {
              email = emailController.text;
              password = passwordController.text;
              if (formKey.currentState!.validate()) {}
            },
          ),
        ],
      ),
    );
  }
}
