void main() {
  // Langkah 1
  print("Hasil Langkah 1: ");
  print("---------------");
  var list1 = <int?>[1, 2, 3];
  var list2 = [0, ...list1];
  print(list1);
  print(list2);
  print(list2.length);

  // Langkah 3
  print("\nHasil Langkah 3: ");
  print("---------------");
  list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  // Menambahkan NIM menggunakan Spread Operator
  var nim = [2241720206];
  var listNim = [...nim];
  print(listNim);
  var listGab = [...list1, ...list3, ...nim];
  print(listGab);

  // Langkah 4
  print("\nHasil Langkah 4: ");
  print("---------------");
  //bool promoActive = true;
  bool promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // Langkah 5
  print("\nHasil Langkah 5: ");
  print("---------------");
  //var login = 'Manager';
  var login = 'User';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);

  // Langkah 6
  print("\nHasil Langkah 6: ");
  print("---------------");
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}