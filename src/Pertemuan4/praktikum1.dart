void main() {
  // Langkah 1
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  print("Hasil Langkah 1: ");
  print("---------------");
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
  
  // Langkah 3
  final list2 = List<String?>.filled(5, null);
  list2[1] = 'Triyana Dewi Fatmawati';
  list2[2] = '2241720206';
  
  print("\nHasil Langkah 3: ");
  print("---------------");
  print(list2.length);
  print(list2);
}
