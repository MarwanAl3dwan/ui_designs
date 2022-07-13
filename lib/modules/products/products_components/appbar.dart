import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/styles/colors.dart';

PreferredSizeWidget productsAppBar({required Color primaryColor}) {
  return AppBar(
    backgroundColor: primaryColor,
    centerTitle: false,
    title: const Icon(
      FontAwesomeIcons.apple,
      color: kPrimaryDarkTextColor,
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GestureDetector(
          child: const Icon(
            FontAwesomeIcons.heart,
            color: kPrimaryDarkTextColor,
          ),
          onTap: () {},
        ),
      )
    ],
  );
}
