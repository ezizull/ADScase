// ignore_for_file: file_names, non_constant_identifier_names

String ToCapitalize(String text) {
  if (text.isEmpty) {
    return '';
  }

  if (text.isEmpty) return text;

  /// If you are careful you could use only this part of the code as shown in the second option.
  return text
      .split(' ')
      .map((word) => word[0].toUpperCase() + word.substring(1).toLowerCase())
      .join(' ');
}
