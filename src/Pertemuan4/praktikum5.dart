void main() {
  // Langkah 1
  print("Hasil Langkah 1: ");
  print("---------------");
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // Langkah 3
  print("\nHasil Langkah 3: ");
  print("---------------");
  var result = tukar((1, 2));
  print("Record setelah ditukar: $result");

  // Langkah 4
  print("\nHasil Langkah 4: ");
  print("---------------");
  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Triyana Dewi Fatmawati', 2241720206);
  print(mahasiswa);

  // Langkah 5
  print("\nHasil Langkah 5: ");
  print("---------------");
  var mahasiswa2 = ('Triyana Dewi Fatmawati', a: 2241720206, b: true, 'last');
  
  print(mahasiswa2.$1); // Prints 'Triyana Dewi Fatmawati'
  print(mahasiswa2.a); // Prints 2241720206
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

// Fungsi untuk menukar nilai dalam tuple
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
