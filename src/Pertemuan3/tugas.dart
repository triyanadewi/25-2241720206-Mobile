void main() {
  String nama = 'Triyana Dewi Fatmawati';
  String nim = '2241720206';

  bool isPrima(int num) {
    if (num < 2) return false; // Bilangan < 2 bukan bilangan prima
    for (int i = 2; i * i <= num; i++) {
      if (num % i == 0) return false; // Jika num habis dibagi bilangan lain, bukan prima
    }
    return true; // Jika tidak ada faktor lain, maka num adalah prima
  }

  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print('$i ($nama - $nim)');
    }
  }
}
