void main() {
  // Langkah 1
  int index;
  for (index = 10; index < 27; index++) {
    print(index);

    // Langkah 3
    if (index == 21) break;
    else if (index > 1 || index < 7) continue;
    print(index);
  }
}
