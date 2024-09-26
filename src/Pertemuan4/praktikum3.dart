void main() {
  // Langkah 1
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print("Hasil Langkah 1: ");
  print("---------------");
  print(gifts);
  print(nobleGases);

  // Langkah 3
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  // Menambahkan Nama dan NIM
  gifts['name'] = 'Triyana Dewi Fatmawati'; 
  gifts['nim'] = '2241720206';

  nobleGases[0] = 'Triyana Dewi Fatmawati'; 
  nobleGases[1] = '2241720206';

  mhs1['name'] = 'Triyana Dewi Fatmawati'; 
  mhs1['nim'] = '2241720206';

  mhs2[3] = 'Triyana Dewi Fatmawati'; 
  mhs2[4] = '2241720206';

  print("\nHasil Langkah 3: ");
  print("---------------");
  print('Gifts \t   : $gifts');
  print('Noble Gases: $nobleGases');
  print('Mhs1 \t   : $mhs1');
  print('Mhs2 \t   : $mhs2');
}