
void main() {
  print("Date and Time Demo");
  dateAndTimeDemo(); // Call the function to perform date and time demo.
}


void dateAndTimeDemo() {
  DateTime now = DateTime.now();
  print("Current Date and Time: $now");

  // Formatting Date
  print("Formatted Date: ${now.year}-${now.month}-${now.day}");

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
