void main() {
  
  print("Hasil Langkah 1: ");
  print("---------------");
  
  String test = "test2";

  if (test == "test1") {
   print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");

  print("\nHasil Langkah 3:");
  print("-----------------");
  String test2 = "true";
  if (test2 == "true") {
    print("Kebenaran");
  }
}