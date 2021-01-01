extension BoolParsing on String {
  bool parseBool() {
    return this.toLowerCase() == 'true';
  }
}