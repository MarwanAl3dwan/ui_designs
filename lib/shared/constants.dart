import 'dart:io';

bool isEmail({required String value}) {
  String email = value.trim();
  return email.endsWith("@gmail.com") ||
      email.endsWith("@yahoo.com") ||
      email.endsWith("@icloud.com") ||
      email.endsWith("@hotmail.com") ||
      email.endsWith("@outlook.com");
}

String? emailValidator({required String? email}) {
  if (email!.isEmpty) {
    return "Email must not be empty";
  } else if (!isEmail(value: email)) {
    return "Invalid Email format";
  } else {
    return null;
  }
}

String? passwordValidator({required String? password}) {
  if (password!.isEmpty) {
    return "Password must not be empty";
  } else if (password.length < 6) {
    return "Password must be at least 6 characters";
  } else {
    return null;
  }
}

String? confirmPasswordValidator({
  required String? password,
  required String? confirmPassword,
}) {
  if (password!.isEmpty) {
    return "Password must not be empty";
  } else if (password != confirmPassword) {
    return "Two passwords are not identical";
  } else if (password.length < 6) {
    return "Password must be at least 6 characters";
  } else {
    return null;
  }
}

final bool isIos = Platform.operatingSystem == 'ios';
// final bool isIos = true;
