extension StringExtension on String {
  String toUpperCaseFirstLetter() {
    if (length == 0) {
      return "";
    }
    if (length == 1) {
      return toUpperCase();
    }
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}