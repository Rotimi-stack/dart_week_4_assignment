import 'dart:io';

void main() async {
  List<Map<String, dynamic>> entries = [];

  while (true) {
    print("Enter a string (or type 'exit' to quit):");
    String? input = stdin.readLineSync()?.trim();

    if (input == null || input.isEmpty) {
      print("Input cannot be empty. Please try again.");
      continue;
    }

    if (input.toLowerCase() == 'exit') break;

    // String Manipulation
    String reversed = input.split('').reversed.join('');
    int length = input.length;

    // Log Entry
    DateTime now = DateTime.now();
    Map<String, dynamic> entry = {
      "original": input,
      "reversed": reversed,
      "length": length,
      "timestamp": now.toString()
    };
    entries.add(entry);
    print("Entry Added: $entry");
  }

  // Save to File
  try {
    File logFile = File('log.txt');
    String logContent = entries
        .map((entry) =>
            "Original: ${entry['original']}, Reversed: ${entry['reversed']}, Length: ${entry['length']}, Timestamp: ${entry['timestamp']}")
        .join('\n');
    await logFile.writeAsString(logContent, mode: FileMode.write); // Overwrites file
    print("Data saved to log.txt");
  } catch (e) {
    print("Error saving to file: $e");
  }

  // Date and Time Demo
  dateAndTimeDemo();
}

void dateAndTimeDemo() {
  DateTime now = DateTime.now();
  print("Current Date and Time: $now");

  // Formatting Date
  print("Formatted Date: ${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}");

  // Parsing Date
  String dateStr = "2024-01-01";
  DateTime parsedDate = DateTime.parse(dateStr);
  print("Parsed Date: $parsedDate");

  // Date Manipulation
  DateTime futureDate = now.add(Duration(days: 10));
  print("10 Days Later: $futureDate");

  DateTime pastDate = now.subtract(Duration(days: 5));
  print("5 Days Ago: $pastDate");

  // Difference Between Dates
  Duration difference = futureDate.difference(pastDate);
  print("Difference: ${difference.inDays} days");
}
