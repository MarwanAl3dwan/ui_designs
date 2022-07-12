import 'package:flutter/material.dart';

import '../../../shared/components.dart';
import '../../../shared/constants.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late GlobalKey<FormState> formKey;

  String? email;
  String? password;
  String? confirmPassword;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          DefaultFormField(
            controller: emailController,
            hintText: "Email",
            prefixIcon: Icons.email_outlined,
            validator: (String? value) {
              return emailValidator(email: value!.trim());
            },
          ),
          const SizedBox(height: 19),
          DefaultFormField(
            controller: passwordController,
            hintText: "Password",
            prefixIcon: Icons.lock_outline,
            obscureText: true,
            validator: (String? value) {
              return passwordValidator(password: value!.trim());
            },
          ),
          const SizedBox(height: 19),
          DefaultFormField(
            controller: confirmPasswordController,
            hintText: "Confirm Password",
            prefixIcon: Icons.lock_outline,
            obscureText: true,
            isLastField: true,
            validator: (String? value) {
              return confirmPasswordValidator(
                password: passwordController.text.trim(),
                confirmPassword: value!.trim(),
              );
            },
            submitField: (String value) {
              if (formKey.currentState!.validate()) {}
            },
          ),
          const SizedBox(height: 19),
          PrimaryButton(
            text: "Sign Up",
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
