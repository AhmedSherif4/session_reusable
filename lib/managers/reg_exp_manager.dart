class RegExpPatternsManager {
  static final RegExp emailRegExpPattern = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  static final RegExp mobileNumberRegExpPattern = RegExp(r"^01[0125][0-9]{8}");

  static final RegExp numbersRegExpPattern =
      RegExp(r".*[0-9].*"); // بيشوف حطيت ارقام ولا لا
  static final RegExp lettersRegExpPattern =
      RegExp(r".*[A-Za-z].*"); // بيشوف حطيت حروف ولا لا

}
