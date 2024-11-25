import 'dart:io';

void main() {
  print("File Handling Demo");
  fileHandlingDemo(); // Call the function to perform date and time demo.
}


void fileHandlingDemo() async {
  try {
    // Reading from a file
    File inputFile = File('input.txt');
    String content = await inputFile.readAsString();
    print("File Content: $content");

    // Writing to another file
    File outputFile = File('output.txt');
    await outputFile.writeAsString("Processed Data:\n$content");
    print("Content written to output.txt");
  } catch (e) {
    print("Error: $e");
  }
}
