void main() {
  print("String Manipulation Program");
  stringManipulation(); // Call the function to perform string manipulations
}

void stringManipulation() {
  String str1 = "Hello";
  String str2 = "World";
  // Concatenation
  String concatenated = "$str1, $str2!";
  print("Concatenated: $concatenated");

  // Interpolation
  int num = 2024;
  print("Interpolated: The year is $num.");

  // Substring
  String substring = concatenated.substring(7, 12);
  print("Substring: $substring");

  // Case Conversion
  print("Uppercase: ${concatenated.toUpperCase()}");
  print("Lowercase: ${concatenated.toLowerCase()}");

  // Reverse and Length
  String reversed = concatenated.split('').reversed.join('');
  print("Reversed: $reversed");
  print("Length: ${concatenated.length}");
}