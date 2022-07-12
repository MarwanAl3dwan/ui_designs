import 'package:flutter/material.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Hello Again!',
          // style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 11),
        Text(
          "Welcome Back You've been \n missed",
          // style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}