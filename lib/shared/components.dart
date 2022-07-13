// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:ui_design/shared/styles/colors.dart';

class DefaultFormField extends StatelessWidget {
  const DefaultFormField({
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    this.validator,
    this.submitField,
    this.obscureText = false,
    this.isLastField = false,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;
  final bool isLastField;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? submitField;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: kSecondaryLightTextColor,
      textInputAction:
          isLastField ? TextInputAction.done : TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          color: kSecondaryLightTextColor,
          size: 22,
        ),
        hintText: hintText,
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

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.text,
    required this.onPress,
    this.width = double.infinity,
    this.height = 58,
    Key? key,
  }) : super(key: key);

  final String text;
  final Function onPress;
  final double width;
  final double height;

  final borderRadius = const BorderRadius.all(Radius.circular(24));

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: borderRadius,
      onTap: () {
        onPress();
      },
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

class SocialButton extends StatelessWidget {
  final String text;
  final Function onPress;
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
    this.size = 40,
    this.width = double.infinity,
    this.height = 58,
    this.borderRadius = 24,
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
    this.borderRadius = 24,
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
      onTap: () {
        onPress();
      },
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

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.onPress,
    required this.text,
    this.isUpperCase = false,
    this.textColor,
    this.style,
  }) : super(key: key);

  final Function onPress;
  final String text;
  final bool isUpperCase;
  final Color? textColor;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style: style ??
            Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: Theme.of(context).canvasColor,
                ),
      ),
    );
  }
}
