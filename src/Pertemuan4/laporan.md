# **Praktikum 1: Eksperimen Tipe Data List**

Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.

## Langkah 1:
Ketik atau salin kode program berikut ke dalam void main().<br>
<img src="/docs/Pertemuan4/Praktikum1/langkah1.png" alt="Langkah1" width="400"/>

#### Pengerjaan: 
> <img src="/docs/Pertemuan4/Praktikum1/pengerjaan1.png" alt="Pengerjaan-Langkah1" width="600"/>

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

#### Pengerjaan:
> <img src="/docs/Pertemuan4/Praktikum1/pengerjaan2.png" alt="Pengerjaan-Langkah2" width="600"/>

#### Penjelasan:
> Kode program di atas mendeklarasikan sebuah list dengan tiga elemen [1, 2, 3], kemudian melakukan beberapa pemeriksaan menggunakan assert(), yakni memastikan bahwa panjang list adalah 3 dan elemen kedua bernilai 2. Kode mencetak panjang list dan elemen kedua sebelum mengubah nilai elemen kedua menjadi 1, lalu memeriksa kembali dengan assert() apakah perubahan berhasil. Hasil akhirnya adalah mencetak nilai-nilai 3, 2, dan 1, yang menunjukkan panjang list dan perubahan nilai elemen pada indeks ke-1.

## Langkah 3
Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.
<br>
Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

#### Pengerjaan:
><img src="/docs/Pertemuan4/Praktikum1/pengerjaan3.png" alt="Pengerjaan-Langkah3" width="600"/>

#### Penjelasan:
> Pada kode program di atas, variabel final list2 yang mempunyai index 5 dengan nilai default null berhasil diisi dengan nama dan NIM pada indeks ke-1 dan ke-2. Kode juga mencetak panjang list2 sebagai 5, dan isi dari list sebagai `[null, Triyana Dewi Fatmawati, 2241720206, null, null]`. Program berjalan dengan lancar tanpa error.

---

### **Catatan:**
Dart akan melakukan infers pada variabel list dengan tipe data List. Jika Anda mencoba menambahkan elemen berupa objek non-integer pada list, maka analyzer atau runtime akan error. Informasi lebih lanjut dapat membaca di tautan ini type inference.

---
---

# **Praktikum 2: Eksperimen Tipe Data Set**

Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.

## Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().<br>
<img src="/docs/Pertemuan4/Praktikum2/langkah1.png" alt="Langkah1" width="400"/>

#### Pengerjaan: 
> <img src="/docs/Pertemuan4/Praktikum2/pengerjaan1.png" alt="Pengerjaan-Langkah1" width="600"/>

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

#### Pengerjaan:
> <img src="/docs/Pertemuan4/Praktikum2/pengerjaan2.png" alt="Pengerjaan-Langkah2" width="600"/>

#### Penjelasan:
> Kode program di atas mendeklarasikan sebuah set bernama halogens yang berisi lima elemen yaitu 'fluorine', 'chlorine', 'bromine', 'iodine', dan 'astatine'. Set ini kemudian dicetak tanpa urutan tertentu menggunakan print(halogens) dan menghasilkan output `{fluorine, chlorine, bromine, iodine, astatine}`.

## Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.<br>
<img src="/docs/Pertemuan4/Praktikum2/langkah2.png" alt="Langkah1" width="400"/><br>
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.

#### Pengerjaan:
><img src="/docs/Pertemuan4/Praktikum2/pengerjaan3.png" alt="Pengerjaan-Langkah3" width="600"/>

#### Penjelasan:
> Pada langkah ini, dua variabel Set yaitu names1 dan names2 dideklarasikan. names1 diinisialisasi sebagai Set dengan sintaks literal, sementara names2 diinisialisasi sebagai Set kosong. Elemen nama dan NIM kemudian ditambahkan ke dalam names1 menggunakan metode add(), sedangkan untuk names2 elemen ditambahkan sekaligus dengan metode addAll(). Setelah itu, hasil dari kedua Set ditampilkan menggunakan print() yang menghasilkan output `{Triyana Dewi Fatmawati, 2241720206}`.

---
---

# **Praktikum 3: Eksperimen Tipe Data Maps**

Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.

## Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().<br>
<img src="/docs/Pertemuan4/Praktikum3/langkah1.png" alt="Langkah1" width="400"/>

#### Pengerjaan: 
> <img src="/docs/Pertemuan4/Praktikum3/pengerjaan1.png" alt="Pengerjaan-Langkah1" width="600"/>

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

#### Pengerjaan:
> <img src="/docs/Pertemuan4/Praktikum3/pengerjaan2.png" alt="Pengerjaan-Langkah2" width="600"/>

#### Penjelasan:
> Kode di atas mendefinisikan dua buah collections data menggunakan struktur data Map. Collections pertama, gifts, berisi pasangan key-value di mana key nya berupa string (seperti 'first', 'second', 'fifth') dan value nya berupa string (seperti 'partridge' dan 'turtledoves') serta integer (1). Collections kedua, nobleGases, juga berisi key-value, tetapi key nya adalah integer (2, 10, dan 18) dan value nya adalah string ('helium' dan 'neon') serta integer (2). Setelah mendefinisikan kedua Map tersebut, program mencetak isi dari masing-masing collections menggunakan fungsi print() yang menghasilkan output <br>`{first: partridge, second: turtledoves, fifth: 1}` <br> `{2: helium, 10: neon, 18: 2}`.

## Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
<br>
<img src="/docs/Pertemuan4/Praktikum3/langkah3.png" alt="Langkah1" width="400"/><br>
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. <br>
Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!

#### Pengerjaan:
><img src="/docs/Pertemuan4/Praktikum3/pengerjaan3.png" alt="Pengerjaan-Langkah3" width="600"/>

#### Penjelasan:
> Pada langkah ketiga, terdapat dua Map baru, mhs1 dan mhs2, diinisialisasi dan diisi dengan data nama dan NIM. Elemen-elemen dalam gifts dan nobleGases juga diperbarui, dan setelah itu, hasil dari semua Map ditampilkan. Output yang dihasilkan yaitu <br> 
`Gifts 	   : {first: partridge, second: turtledoves, fifth: golden rings, name: Triyana Dewi Fatmawati, nim: 2241720206}` <br>
`Noble Gases: {2: helium, 10: neon, 18: argon, 0: Triyana Dewi Fatmawati, 1: 2241720206}` <br>
`Mhs1 	   : {name: Triyana Dewi Fatmawati, nim: 2241720206}` <br>
`Mhs2 	   : {3: Triyana Dewi Fatmawati, 4: 2241720206}`

---
---

# Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators

Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.

## Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().<br>
<img src="/docs/Pertemuan4/Praktikum4/langkah1.png" alt="Langkah1" width="400"/>

#### Pengerjaan: 
> <img src="/docs/Pertemuan4/Praktikum4/pengerjaan1.png" alt="Pengerjaan-Langkah1" width="600"/>

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

#### Pengerjaan:
> <img src="/docs/Pertemuan4/Praktikum4/pengerjaan2.png" alt="Pengerjaan-Langkah2" width="600"/>

#### Penjelasan:
> Kode program di atas merupakan penggunaan list dan operator Spread dan Control-flow. Di dalamnya, list1 dideklarasikan berisi tiga elemen integer: 1, 2, dan 3. Selanjutnya, list2 dibuat dengan menambahkan elemen 0 di depan semua elemen dari list1 menggunakan operator penyebaran (...), sehingga list2 berisi empat elemen: [0, 1, 2, 3]. Program kemudian mencetak isi list1, list2, dan panjang dari list2, yang menghasilkan output <br>
`[1, 2, 3]` <br>
`[0, 1, 2, 3]` <br>
`4`

## Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
<br>
<img src="/docs/Pertemuan4/Praktikum4/langkah3.png" alt="Langkah1" width="400"/><br>
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!

#### Pengerjaan:
><img src="/docs/Pertemuan4/Praktikum4/pengerjaan3.png" alt="Pengerjaan-Langkah3" width="600"/>

#### Penjelasan:
> Pada Langkah 3, list1 diperbarui menjadi `[1, 2, null]`, dan list3 dibuat dengan menambahkan elemen dari list1, termasuk null, menghasilkan panjang 4. Selanjutnya, NIM disimpan dalam list nim, dan listGab dibentuk dengan menggabungkan list1, list3, dan nim, menghasilkan list `[1, 2, null, 0, 1, 2, null, 2241720206]`

## Langkah 4
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
<br>
<img src="/docs/Pertemuan4/Praktikum4/langkah4.png" alt="Langkah1" width="400"/><br>
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.

#### Pengerjaan:
> **promoActive ketika true** <br>
> <img src="/docs/Pertemuan4/Praktikum4/pengerjaan4-1.png" alt="Pengerjaan-Langkah3" width="600"/>
<br>

> **promoActive ketika false** <br>
> <img src="/docs/Pertemuan4/Praktikum4/pengerjaan4-2.png" alt="Pengerjaan-Langkah3" width="600"/>

#### Penjelasan:
> Ketika promoActive bernilai true, elemen 'Outlet' akan ditambahkan ke dalam list nav, sehingga hasilnya menjadi `['Home', 'Furniture', 'Plants', 'Outlet']`. Sebaliknya, jika promoActive bernilai false, elemen 'Outlet' tidak akan ditambahkan, dan list hanya akan berisi tiga elemen tetap: `['Home', 'Furniture', 'Plants']`.

## Langkah 5
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
<br>
<img src="/docs/Pertemuan4/Praktikum4/langkah5.png" alt="Langkah1" width="400"/><br>
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.

#### Pengerjaan:
> **login = Manager** <br>
> <img src="/docs/Pertemuan4/Praktikum4/pengerjaan5-1.png" alt="Pengerjaan-Langkah3" width="600"/>
<br>

> **login = User** <br>
> <img src="/docs/Pertemuan4/Praktikum4/pengerjaan5-2.png" alt="Pengerjaan-Langkah3" width="600"/>

#### Penjelasan:
> Pada langkah ini, variabel login digunakan untuk menentukan apakah elemen 'Inventory' akan ditambahkan ke dalam list nav2. Jika login diatur ke Manager, maka kondisi `if (login case 'Manager')` akan bernilai benar, dan hasilnya list nav2 menjadi `['Home', 'Furniture', 'Plants', 'Inventory']`. Sebaliknya, jika login diubah menjadi nilai lain, seperti 'User', elemen 'Inventory' tidak akan ditambahkan, sehingga nav2 hanya berisi `['Home', 'Furniture', 'Plants']`. 

## Langkah 6
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
<br>
<img src="/docs/Pertemuan4/Praktikum4/langkah6.png" alt="Langkah1" width="400"/><br>
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat **Collection For** dan dokumentasikan hasilnya.

#### Pengerjaan:
><img src="/docs/Pertemuan4/Praktikum4/pengerjaan6.png" alt="Pengerjaan-Langkah3" width="600"/>

#### Penjelasan:
> Dalam kode tersebut, listOfInts berisi tiga bilangan bulat: [1, 2, 3]. List listOfStrings dihasilkan dengan memulai elemen pertama '#0', dan selanjutnya, menggunakan loop for untuk mengiterasi setiap elemen dalam listOfInts, di mana setiap elemen akan dimasukkan ke dalam format string '#' diikuti oleh nilai elemen tersebut (contoh: '#1', '#2', '#3'). Pernyataan assert(listOfStrings[1] == '#1') digunakan untuk memverifikasi bahwa elemen kedua dalam listOfStrings adalah '#1'. Hasil akhir yang dicetak adalah list listOfStrings, yang berisi `[#0, #1, #2, #3]`, mencerminkan hasil dari iterasi dan format yang diterapkan.

Manfaat dari **Collection For** : <br>
> Collection For di Dart adalah fitur yang memungkinkan pembuatan koleksi (seperti list, set, atau map) dengan menggunakan loop for dalam satu baris, yang meningkatkan keterbacaan dan efisiensi kode. Manfaat utamanya termasuk mengurangi jumlah baris kode yang diperlukan, memudahkan pengolahan dan pemformatan elemen, serta mengurangi kompleksitas kode dengan menghindari loop terpisah. Selain itu, Collection For dapat digabungkan dengan kondisi menggunakan if, sehingga memungkinkan penambahan elemen berdasarkan kriteria tertentu. Fitur ini meningkatkan produktivitas dan kualitas dalam pengembangan aplikasi Dart.
---
---

# Praktikum 5: Eksperimen Tipe Data Records

> **Catatan:** Tipe data Records mulai diperkenalkan pada Dart versi 3.0. Pastikan Anda sudah setup menggunakan Dart 3.0 atau yang lebih baru.
<br>
Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.

## Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().<br>
<img src="/docs/Pertemuan4/Praktikum5/langkah1.png" alt="Langkah1" width="400"/>

#### Pengerjaan: 
> <img src="/docs/Pertemuan4/Praktikum5/pengerjaan1.png" alt="Pengerjaan-Langkah1" width="600"/>

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

#### Pengerjaan:
> <img src="/docs/Pertemuan4/Praktikum5/pengerjaan2.png" alt="Pengerjaan-Langkah2" width="600"/>

#### Penjelasan:
> Dalam kode program di atas, sebuah tuple bernama record dideklarasikan yang menggabungkan beberapa elemen menjadi satu entitas terstruktur. Tuple ini terdiri dari dua elemen posisi, yaitu 'first' dan 'last', serta dua elemen bernama, a dengan nilai 2 dan b dengan nilai true. Ketika kode dieksekusi, perintah print(record); menampilkan output (first, last, a: 2, b: true), yang mencerminkan seluruh isi tuple. Penggunaan tuple ini memungkinkan pengelompokan nilai-nilai yang berbeda dalam satu struktur, memudahkan organisasi dan akses data dengan cara yang lebih teratur dan intuitif.

## Langkah 3
Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.
<br>
<img src="/docs/Pertemuan4/Praktikum5/langkah3.png" alt="Langkah1" width="400"/><br>
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.

#### Pengerjaan:
><img src="/docs/Pertemuan4/Praktikum5/pengerjaan3.png" alt="Pengerjaan-Langkah3" width="600"/>

#### Penjelasan:
> Pada Langkah 3, fungsi tukar dipanggil dengan tuple (1, 2) sebagai argumen. Fungsi ini menggunakan destrukturisasi untuk memisahkan nilai menjadi dua variabel, a dan b, yang masing-masing bernilai 1 dan 2. Setelah itu, fungsi mengembalikan tuple baru dengan posisi nilai yang ditukar, yaitu (2, 1). Hasilnya kemudian dicetak sebagai `Record setelah ditukar: (2, 1)`, menunjukkan bahwa nilai dalam tuple telah berhasil dipertukarkan.

## Langkah 4
Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
<br>
<img src="/docs/Pertemuan4/Praktikum5/langkah4.png" alt="Langkah1" width="400"/><br>
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya!

#### Pengerjaan:
><img src="/docs/Pertemuan4/Praktikum5/pengerjaan4.png" alt="Pengerjaan-Langkah3" width="600"/>

#### Penjelasan:
> Kode program di atas berhasil menjalankan semua langkah tanpa error, dan variabel mahasiswa berhasil diinisialisasi dan dicetak dengan benar. Sehingga, nama dan NIM berhasil disimpan dalam record tipe tuple. 

## Langkah 5
Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
<br>
<img src="/docs/Pertemuan4/Praktikum5/langkah5.png" alt="Langkah1" width="400"/><br>
Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

#### Pengerjaan:
><img src="/docs/Pertemuan4/Praktikum5/pengerjaan5-1.png" alt="Pengerjaan-Langkah3" width="600"/>

#### Tambahan:
Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!

#### Pengerjaan:
><img src="/docs/Pertemuan4/Praktikum4/perbaikan5-2.png" alt="Perbaikan-Langkah3" width="600"/><br>

#### Penjelasan:
> Pada Langkah 5, variabel mahasiswa2 dideklarasikan sebagai tuple yang menyimpan nama, NIM, dan beberapa elemen lainnya. Dengan menggunakan notasi $ untuk akses elemen, `print(mahasiswa2.$1);` mencetak nama `Triyana Dewi Fatmawati`, `print(mahasiswa2.a);` mencetak NIM `2241720206`, dan `print(mahasiswa2.b);` mencetak nilai `true`. Selain itu, `print(mahasiswa2.$2);` mencetak elemen terakhir dalam tuple, yaitu `last`. Seluruh akses elemen berhasil dilakukan tanpa error, menunjukkan bahwa tuple berfungsi dengan baik untuk menyimpan dan mengakses data.

---
---

# Tugas Praktikum
1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!
<br><br>

2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
    > **Jawaban:** <br>
    > Functions dalam bahasa Dart adalah blok kode yang dapat dieksekusi dan digunakan untuk melakukan tugas tertentu. Functions dapat ditetapkan ke variabel atau diteruskan sebagai argumen ke functions lain. Sebuah function dapat memiliki parameter sebagai input dan mengembalikan nilai sebagai output.
    
<br>

3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
    > **Jawaban:** <br>
    1. Named Parameter <br>
    Named Parameter berguna ketika fungsi memiliki beberapa parameter, sehingga jelas apa yang diwakili oleh setiap argumen. Parameter bernama diapit dalam kurung kurawal { } dalam definisi fungsi. 
    <br> Contoh:

    ``` dart
        void sapa({required String name, int? age}) {
            print('Halo, $name. ${age != null ? "Anda berusia $age tahun." : "Usia tidak diketahui."}');
        }
    ```

    Dalam contoh di atas:
    - name wajib diisi karena ditandai sebagai required.
    - age bersifat opsional dan bisa null jika tidak diisi.
    
    Contoh pemanggilan dari fungsi yang telah didefinisikan tadi:

    ``` dart
        // Mengisi kedua parameter 
        sapa(name: 'Budi', age: 25);    // Output: Halo, Budi. Anda berusia 25 tahun.

        // Hanya mengisi parameter wajib, 'age' tidak diisi (null)
        sapa(name: 'Andi');   // Output: Halo, Andi. Usia tidak diketahui.
    ```

    2. Optional positional parameters <br>
    Parameter yang dibungkus dalam tanda kurung siku [ ] bersifat opsional. Jika tidak memiliki nilai default, tipenya harus nullable karena nilai defaultnya adalah null. <br>Contoh:

    ``` dart
        String greet(String name, String message, [String? device]) {
        var result = '$name says: $message';
        if (device != null) {
            result += ' using a $device';
        }
        return result;
        }
    ```

    Contoh pemanggilan:
    ``` dart
        // Tanpa Parameter Opsional
        print(greet('Alice', 'Hello!'));    // Output: Alice says: Hello!

        // Dengan Parameter Opsional
        print(greet('Alice', 'Hello!', 'smartphone'));    // Output: Alice says: Hello! using a smartphone
    ```

<br>

4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya! <br>
    > **Jawaban:**

    Fungsi sebagai first-class objects berarti bahwa fungsi dapat diperlakukan sebagai nilai biasa dalam pemrograman. Ini memungkinkan fungsi untuk: <br>
    1. Dikirim sebagai argumen ke fungsi lain.
    2. Ditetapkan ke variabel.
    3. Dikembalikan sebagai nilai dari fungsi lain.

    > Contoh Sintaksnya:
    ``` dart
        // 1. Melewatkan Fungsi sebagai Parameter
        void printElement(int element) {
        print(element);
        }

        var list = [1, 2, 3];

        // Mengirim printElement sebagai parameter ke forEach.
        list.forEach(printElement);
    ```
    Dalam contoh ini, fungsi printElement dipanggil untuk setiap elemen dalam list.

    ``` dart
        // 2. Menyimpan Fungsi dalam Variabel
        var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
        assert(loudify('hello') == '!!! HELLO !!!');
    ```
    Di sini, loudify adalah fungsi anonim yang mengubah pesan menjadi huruf kapital dan menambahkan tanda seru.

    ``` dart
        // 3. Mengembalikan Fungsi dari Fungsi Lain
        Function makeMultiplier(int factor) {
        return (int number) => number * factor;
        }

        var doubleIt = makeMultiplier(2);
        assert(doubleIt(5) == 10);
    ```
    Dalam contoh ini, makeMultiplier mengembalikan fungsi yang menggandakan angka.

<br>

5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
    > **Jawaban:**

    Anonymous Functions yang juga dikenal sebagai lambda atau closure, adalah fungsi yang tidak memiliki nama. Meskipun kebanyakan fungsi memiliki nama, kita dapat membuat fungsi tanpa nama untuk digunakan dalam konteks tertentu.

    Anonymous Functions memiliki beberapa komponen:
    - Nol atau lebih parameter yang dipisahkan oleh koma.
    - Anotasi tipe opsional di antara tanda kurung.
    - Blok kode yang berisi logika fungsi.

    > Contoh Sintaksnya:
    ``` dart
        const list = ['apples', 'bananas', 'oranges'];

        var uppercaseList = list.map((item) {
        return item.toUpperCase();
        }).toList();
        // Convert to list after mapping

        for (var item in uppercaseList) {
        print('$item: ${item.length}');
        }

        // Output:
        APPLES: 6
        BANANAS: 7
        ORANGES: 7
    ```
    
<br>

6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
    > **Jawaban:**
    
    **Lexical Scope** <br>
    Lexical scope (atau scoping statis) adalah aturan yang menentukan cara variabel diakses dalam program berdasarkan lokasi atau posisi kode saat variabel tersebut didefinisikan. Dalam lexical scope, sebuah fungsi hanya dapat mengakses variabel yang didefinisikan di dalam tubuhnya atau di dalam konteks fungsi yang membungkusnya (parent function). 
    <br>Contoh:
    ``` dart
        void main() {
        var outerVariable = 'Hello';

        void innerFunction() {
            print(outerVariable); // Mengakses variabel dari fungsi luar
        }

        innerFunction(); // Output: Hello
        }
    ```
    Pada contoh di atas, innerFunction dapat mengakses outerVariable karena didefinisikan di dalam main.

    Sedangkan,

    **Lexical Closures** <br>
    Lexical closures adalah fungsi yang mengingat (closure) variabel dari lingkungannya, bahkan setelah fungsi luar selesai dieksekusi. Closure memungkinkan fungsi untuk "menyimpan" variabel yang ada di scope saat fungsi tersebut diciptakan, sehingga variabel tersebut masih dapat diakses meskipun fungsi luar telah selesai. 
    <br>Contoh:
    ``` dart
        Function createCounter() {
        int count = 0; // Variabel lokal

        // Mengembalikan fungsi anonim yang menggunakan count
        return () {
            count++;
            return count;
        };
        }

        void main() {
        var counter = createCounter(); // Membuat closure

        print(counter()); // Output: 1
        print(counter()); // Output: 2
        print(counter()); // Output: 3
        }
    ```
    Pada contoh di atas, fungsi yang dikembalikan oleh createCounter adalah closure yang mengingat nilai count, meskipun fungsi createCounter telah selesai dieksekusi.
    <br>
    <br>
    **Kesimpulan** <br>
    - Lexical Scope menentukan di mana variabel dapat diakses berdasarkan lokasi dalam kode.
    - Lexical Closures adalah fungsi yang menyimpan akses ke variabel dari scope-nya, sehingga variabel tersebut tetap dapat diakses bahkan setelah fungsi luar selesai dieksekusi.
        
<br>

7. Jelaskan dengan contoh cara membuat return multiple value di Functions!
    > **Jawaban:**
    
    Untuk mengembalikan beberapa nilai dari sebuah fungsi di Dart, kita bisa menggunakan beberapa metode, seperti menggunakan List, Map, atau class. Berikut adalah penjelasan dan contoh untuk masing-masing metode:

    1. Menggunakan List <br>
    Mengembalikan beberapa nilai dalam bentuk List. 
    <br> Contoh:
    ``` dart
        List<int> calculate(int a, int b) {
        int sum = a + b;
        int product = a * b;
        return [sum, product]; // Mengembalikan List berisi dua nilai
        }

        void main() {
        var result = calculate(3, 5);
        print('Sum: ${result[0]}, Product: ${result[1]}'); // Output: Sum: 8, Product: 15
        }
    ```

    2. Menggunakan Map
    Jika ingin mengembalikan nilai dengan key, bisa menggunakan Map.
    <br> Contoh:
    ``` dart
        Map<String, int> calculate(int a, int b) {
        return {
            'sum': a + b,
            'product': a * b,
        }; // Mengembalikan Map dengan kunci yang jelas
        }

        void main() {
        var result = calculate(3, 5);
        print('Sum: ${result['sum']}, Product: ${result['product']}'); // Output: Sum: 8, Product: 15
        }
    ```

    3. Menggunakan Class
    Kita juga bisa membuat class untuk mengemas nilai yang ingin dikembalikan.
    <br> Contoh:
    ``` dart
        class CalculationResult {
        final int sum;
        final int product;

        CalculationResult(this.sum, this.product);
        }

        CalculationResult calculate(int a, int b) {
        return CalculationResult(a + b, a * b); // Mengembalikan objek CalculationResult
        }

        void main() {
        var result = calculate(3, 5);
        print('Sum: ${result.sum}, Product: ${result.product}'); // Output: Sum: 8, Product: 15
        }
    ```
    
    Dalam Dart, kita dapat mengembalikan beberapa nilai dari fungsi dengan menggunakan List, Map, atau class untuk mengemas nilai-nilai tersebut.

<br>

8. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!