import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';

class TextInRectangle extends StatelessWidget {
  final String text;
  final bool filled;

  const TextInRectangle({
    required this.text,
    this.filled = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 23,
      decoration: BoxDecoration(
        color: filled ? kWhiteColor : Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        border: !filled
            ? Border.all(width: 1, color: kSecondaryLightTextColor)
            : null,
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 12,
                color: filled
                    ? kPrimaryLightTextColor.withOpacity(0.8)
                    : kSecondaryLightTextColor,
              ),
        ),
      ),
    );
  }
}
