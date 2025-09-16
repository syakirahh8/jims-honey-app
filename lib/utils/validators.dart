class Validators {
  static String? validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return "full Name is required";
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "email is required";
    }
    if (value.endsWith("@gmail.com")) {
      "Please enter a valid email";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null ||  value.isEmpty) {
      return "Password is required";
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String originalPassword) {
    if (value != originalPassword) {
      return "Password do not match";
    }
    return null;
  }
}