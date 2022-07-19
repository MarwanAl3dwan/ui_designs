// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/shared/styles/colors.dart';

import 'constants.dart';

class AdaptiveTextFormField extends StatelessWidget {
  const AdaptiveTextFormField({
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    this.verticalPadding = 8,
    this.leftPadding = 8,
    this.validator,
    this.submitField,
    this.borderColor,
    this.fillColor,
    this.borderRadius = 6,
    this.obscureText = false,
    this.isLastField = false,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;
  final bool isLastField;
  final double verticalPadding;
  final double leftPadding;
  final Color? fillColor;
  final Color? borderColor;
  final double borderRadius;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? submitField;

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor ?? Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(borderRadius),
    );
    if (isIos) {
      return CupertinoTextField(
        textInputAction:
            isLastField ? TextInputAction.done : TextInputAction.next,
        obscureText: obscureText,
        maxLines: 1,
        onSubmitted: submitField,
        placeholder: hintText,
        controller: controller,
        prefix: Padding(
          padding: EdgeInsets.only(left: leftPadding, right: 8),
          child: Icon(prefixIcon, size: 22, color: kSecondaryLightTextColor),
        ),
        padding: EdgeInsets.symmetric(vertical: verticalPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: kSecondaryLightTextColor.withOpacity(0.3)),
          color: fillColor ?? Colors.transparent,
        ),
      );
    } else {
      return TextFormField(
        controller: controller,
        cursorColor: kSecondaryLightTextColor,
        textInputAction:
            isLastField ? TextInputAction.done : TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: leftPadding),
            child: Icon(
              prefixIcon,
              color: kSecondaryLightTextColor,
              size: 22,
            ),
          ),
          contentPadding: EdgeInsets.only(
            left: leftPadding,
            top: verticalPadding,
            bottom: verticalPadding,
          ),
          fillColor: fillColor ?? kSecondaryLightTextColor.withOpacity(0.15),
          hintText: hintText,
          border: inputBorder,
          enabledBorder: inputBorder,
          focusedErrorBorder: inputBorder,
          disabledBorder: inputBorder,
          errorBorder: inputBorder,
          focusedBorder: inputBorder,
        ),
        obscureText: obscureText,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 16,
            ),
        validator: validator,
        onFieldSubmitted: submitField,
      );
    }
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.text,
    required this.onPress,
    this.width = double.infinity,
    this.height = 50,
    this.radius,
    Key? key,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPress;
  final double width;
  final double height;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    final BorderRadius borderRadius =
        BorderRadius.all(Radius.circular(radius ?? 24));
    if (isIos) {
      return SizedBox(
        height: height,
        child: CupertinoButton.filled(
          minSize: width,
          alignment: Alignment.center,
          onPressed: onPress,
          child: Text(text),
        ),
      );
    } else {
      return InkWell(
        borderRadius: borderRadius,
        onTap: onPress,
        child: Container(
          alignment: AlignmentDirectional.center,
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: borderRadius,
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: kWhiteColor,
            ),
          ),
        ),
      );
    }
  }
}

class SocialButton extends StatelessWidget {
  final String text;
  final GestureTapCallback? onPress;
  IconData? icon;
  String? image;
  Color? iconColor;
  final Color backgroundColor;
  final double size;
  final double width;
  final double height;
  final double borderRadius;
  final double borderThikness;
  final Color borderColor;
  TextStyle? textStyle;

  SocialButton.icon({
    required this.text,
    required this.onPress,
    required this.icon,
    this.iconColor,
    this.backgroundColor = Colors.transparent,
    this.size = 30,
    this.width = double.infinity,
    this.height = 58,
    this.borderRadius = 8,
    this.borderThikness = 1,
    this.borderColor = kSecondaryLightTextColor,
    this.textStyle,
    Key? key,
  }) : super(key: key);

  SocialButton.image({
    Key? key,
    required this.text,
    required this.onPress,
    required this.image,
    this.backgroundColor = Colors.transparent,
    this.borderColor = kSecondaryLightTextColor,
    this.width = double.infinity,
    this.height = 58,
    this.size = 40,
    this.borderRadius = 8,
    this.borderThikness = 1,
    this.textStyle,
  }) : super(key: key);

  late final border = BorderRadius.all(Radius.circular(borderRadius));
  late final borderSide = Border.all(color: borderColor, width: borderThikness);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: border,
      splashColor: Colors.grey,
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: border,
          border: borderSide,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Positioned(
                left: 0,
                child: icon == null
                    ? Image.asset(
                        image!,
                        height: size,
                      )
                    : Icon(
                        icon,
                        size: size,
                        color: iconColor ?? kPrimaryLightTextColor,
                      ),
              ),
              // const Spacer(flex: 3),
              Positioned(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: textStyle ??
                      Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontSize: 16),
                ),
              ),
              // const Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}

class AdaptiveProgressIndicator extends StatelessWidget {
  const AdaptiveProgressIndicator({
    Key? key,
    this.iosIndicatorSize,
    this.color,
  }) : super(key: key);

  final double? iosIndicatorSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoActivityIndicator(
          radius: iosIndicatorSize ?? 10, color: color);
    } else {
      return CircularProgressIndicator(color: color);
    }
  }
}

class AdaptiveTextButton extends StatelessWidget {
  const AdaptiveTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.isUpperCase = false,
  }) : super(key: key);

  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final bool isUpperCase;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style: textStyle,
      ),
    );
  }
}
