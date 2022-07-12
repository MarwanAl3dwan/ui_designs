import 'package:flutter/material.dart';

import 'register_components/register_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const RegisterBody(),
    );
  }
}
