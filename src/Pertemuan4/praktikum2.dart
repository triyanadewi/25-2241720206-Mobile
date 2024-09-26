void main() {
  // Langkah 1
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print("Hasil Langkah 1: ");
  print("---------------");
  print(halogens);

  // Langkah 3
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  // Menambahkan elemen Nama dan NIM dengan fungsi berbeda
  names1.add('Triyana Dewi Fatmawati');
  names1.add('2241720206');
  names2.addAll({'Triyana Dewi Fatmawati', '2241720206'});

  print("\nHasil Langkah 3: ");
  print("---------------");
  print(names1);
  print(names2);
}