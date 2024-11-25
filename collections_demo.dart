void main() {
  print("Collections Demo");
  collectionsDemo(); // Call the function to perform date and time demo.
}



void collectionsDemo() {
  // List Operations
  List<String> fruits = ["Apple", "Banana", "Cherry"];
  fruits.add("Orange");
  fruits.remove("Banana");
  print("List: $fruits");
  print("Iterating over List:");
  fruits.forEach((fruit) => print(fruit));

  // Set Operations
  Set<String> colors = {"Red", "Green", "Blue"};
  colors.add("Yellow");
  colors.add("Red"); // No duplicate allowed
  colors.remove("Green");
  print("Set: $colors");

  // Map Operations
  Map<String, int> ages = {"Alice": 25, "Bob": 30};
  ages["Charlie"] = 35;
  ages.remove("Alice");
  print("Map: $ages");
  print("Iterating over Map:");
  ages.forEach((key, value) => print("$key is $value years old."));
}