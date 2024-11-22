# **Pertemuan 11 | Pemrograman Asynchronous**
## Identitas Mahasiswa

> Nama  : Triyana Dewi Fatmawati <br/>
> NIM   : 2241720206 <br/>
> Kelas : TI - 3H <br/>
> Nomor : 25 <br/>

---
**Link Laporan Praktikum dan Soal:**  


## **Praktikum 1**
### **Soal 1** <br>
Tambahkan **nama panggilan** Anda pada `title` app sebagai identitas hasil pekerjaan Anda.<br>

#### **Pengerjaan:**
<img src="docs/Praktikum1/JawabanSoal1.png" width="400"/> <br>

### **Soal 2** <br>
- Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini. <br>
<img src="docs/Praktikum1/Soal2_1.png" width="400"/>
- Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. <br>
<img src="docs/Praktikum1/Soal2_2.png" width="400"/> <br>

#### **Pengerjaan:** <br>
<img src="docs/Praktikum1/JawabanSoal2_1.png" width="400"/> <br>
<img src="docs/Praktikum1/JawabanSoal2_2.png" width="400"/> <br>

### **Soal 3** <br>
Jelaskan maksud kode langkah 5 tersebut terkait `substring` dan `catchError`!
#### **Jawaban:** <br>
- **substring** digunakan untuk membatasi panjang teks yang ditampilkan, karena data yang dikembalikan dari API bisa sangat panjang. Sebagai contoh pada kode langkah 5 `substring(0, 450)` yang berarti mengambil sebagian dari teks mulai dari indeks ke-0 hingga ke-449 (450 karakter pertama).
- **catchError** berfungsi menangkap kesalahan (error) yang terjadi selama pemanggilan Future (proses getData()).


### **Hasil Akhir Praktikum 1** <br>
<img src="docs/Praktikum1/prak1.gif" width="400"/>
 
<br>

---

## **Praktikum 2**
### **Soal 4** <br>
Jelaskan maksud kode langkah 1 dan 2 tersebut! <br>
#### **Jawaban:**
**Langkah 1:**
- Tipe Return Future<int>: <br>
Method asinkron (async) yang mengembalikan nilai bertipe int di masa depan setelah operasi selesai. <br>
- Future.delayed: <br>
Membuat simulasi penundaan selama 3 detik sebelum nilai dikembalikan. Berguna untuk menguji atau mensimulasikan proses yang memerlukan waktu, seperti pengambilan data dari API atau database. <br>
- Fungsi Masing-Masing Method: <br>
  - returnOneAsync: Mengembalikan angka 1 setelah 3 detik. <br>
  - returnTwoAsync: Mengembalikan angka 2 setelah 3 detik. <br>
  - returnThreeAsync: Mengembalikan angka 3 setelah 3 detik.
<br>

**Langkah 2:**
- Tipe Return Future: <br>
Method ini adalah fungsi asinkron tanpa nilai kembalian (void), tetapi tetap berjalan secara asinkron. <br>
- Menggunakan await: <br>
await digunakan untuk menunggu hasil masing-masing method (returnOneAsync, returnTwoAsync, returnThreeAsync) sebelum melanjutkan eksekusi ke baris berikutnya.<br>
Eksekusi berjalan secara sekuensial:
  - Menunggu 3 detik untuk mendapatkan angka 1.
  - Menunggu 3 detik lagi untuk angka 2.
  - Menunggu 3 detik lagi untuk angka 3.
- Menghitung Total: <br>
Hasil dari masing-masing method dijumlahkan: <br>
total = 1 + 2 + 3. <br>
Totalnya adalah 6 setelah semua proses selesai. <br>
- Memperbarui UI dengan setState: <br>
Nilai result diatur menjadi string total (6) menggunakan setState.
Memastikan UI diperbarui dengan nilai terbaru setelah proses selesai. <br>
<br>

**Ilustrasi Eksekusi** <br>
- returnOneAsync dijalankan (menunggu 3 detik, menghasilkan 1).
- returnTwoAsync dijalankan (menunggu 3 detik, menghasilkan 2).
- returnThreeAsync dijalankan (menunggu 3 detik, menghasilkan 3).
- Total dihitung: 1 + 2 + 3 = 6.
- Nilai total (6) ditampilkan di layar. <br>
- Total waktu eksekusi adalah 9 detik karena proses berjalan berurutan (sekuensial). <br>
<br>

### **Hasil Akhir Praktikum 2**
<img src="docs/Praktikum2/prak2.gif" width="400"/>

<br>

---

## **Praktikum 3**
### **Soal 5**
Jelaskan maksud kode langkah 2 tersebut!

#### **Jawaban:**
Kode pada langkah 2 menambahkan variabel late `completer`, method `getNumber`, dan method `calculate`. <br>

**Completer** adalah kelas di Dart yang digunakan untuk mengontrol penyelesaian (completion) sebuah Future secara manual. Dengan Completer, kita dapat menentukan kapan dan bagaimana sebuah Future selesai, baik dengan nilai sukses (complete) maupun kesalahan (completeError). Variabel completer dideklarasikan sebagai late, yang berarti Variabel akan diinisialisasi nanti sebelum digunakan.
<br>

**Method getNumber** <br>
- completer = Completer<int>() <br>
Membuat instance baru dari Completer yang akan menyelesaikan sebuah Future bertipe int. <br>
- calculate(); <br>
Memulai proses perhitungan asinkron. Hasil perhitungan ini akan melengkapi (complete) Future yang dihasilkan oleh Completer. <br>
- return completer.future; <br>
Mengembalikan Future yang terkait dengan Completer. Future ini digunakan oleh kode pemanggil untuk menunggu hasil perhitungan.
<br>

**Method calculate** <br>
- await Future.delayed <br>
Mensimulasikan proses yang memakan waktu, seperti perhitungan atau pengambilan data, dengan penundaan 5 detik. <br>
- completer.complete(42) <br>
Menyelesaikan Future yang terkait dengan Completer dan memberikan nilai 42 sebagai hasilnya.
<br>
<br>

Jadi, **Maksud kode pada langkah 2**:
1.  Mensimulasikan proses yang butuh waktu 5 detik (seperti menghitung sesuatu atau mengambil data).
2. Menggunakan Completer untuk mengatur kapan hasil proses selesai, sehingga kita bisa memberikan nilai hasil (yaitu angka 42) setelah proses selesai.
3. Mengembalikan nilai 42 sebagai hasil operasi setelah 5 detik.
<br>
<br>

### **Soal 6**
Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!

#### **Jawaban:**
**Langkah 2:** <br>
- Kode hanya menangani keberhasilan (hasilnya selalu 42).
- Tidak ada penanganan jika terjadi error. Jika error muncul, aplikasi bisa crash. <br>

**Langkah 5-6:** <br>
- Menambahkan penanganan error dengan try-catch di calculate.
- Jika proses gagal, error ditangani dengan completer.completeError, dan catchError akan menampilkan pesan error ke pengguna.
- Jadi, kode lebih aman dan dapat menangani baik keberhasilan maupun kegagalan. <br>

**Intinya:** Langkah 5-6 membuat kode lebih aman karena dapat menangani keberhasilan maupun kegagalan proses, sehingga aplikasi tetap berjalan dengan baik meskipun terjadi error. Sementara itu, langkah 2 hanya cocok jika proses selalu berhasil, karena tidak ada penanganan error.
<br>
<br>

### **Hasil Akhir Praktikum 3**
<img src="docs/Praktikum3/prak3.gif" width="400"/>

<br>

---

## **Praktikum 4**
### **Soal 7** <br>
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. <br>
#### **Pengerjaan:** <br>
<img src="docs/Praktikum4/JawabanSoal7.gif" width="400"/>

<br>

### **Soal 8**
Jelaskan maksud perbedaan kode langkah 1 dan 4! <br>
#### **Jawaban:** <br>
**Kode langkah 1:** <br>
- FutureGroup digunakan untuk mengelola banyak Future dan menunggu hingga semua Future selesai.
- Menggunakan add untuk menambahkan Future.
- Harus memanggil close() setelah semua Future ditambahkan agar proses berjalan.
- Mengembalikan nilai berupa list hasil dari semua Future melalui future. <br>

**Kode langkah 4:** <br>
- Future.wait langsung menerima list dari semua Future yang ingin ditunggu.
- Tidak perlu add atau close seperti FutureGroup.
- Setelah semua Future selesai, hasil dikembalikan sebagai list dari nilai masing-masing Future. <br>

Jadi, Future.wait lebih sederhana dan langsung digunakan, cocok jika semua proses Future sudah diketahui sejak awal. Sementara itu, FutureGroup lebih fleksibel untuk menambahkan Future secara bertahap, tetapi lebih rumit karena harus menutup grup dengan close(). 

<br>

### **Hasil Akhir Praktikum 4**
<img src="docs/Praktikum4/prak4.gif" width="400"/>

<br>

---

## **Praktikum 5**
### **Soal 9** <br>
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. <br>
#### **Pengerjaan:** <br>
<img src="docs/Praktikum5/JawabanSoal9.gif" width="400"/>

<br>

### **Soal 10**
Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!
#### **Jawaban:** <br>
<img src="docs/Praktikum5/JawabanSoal10.gif" width="400"/> <br>
Hasil setelah memanggil method handleError() ke ElevatedButton <br>
<img src="docs/Praktikum5/prak5.gif" width="400"/>
<br>

**Perbedaan kode langkah 1 dan 4 :** <br>
- Langkah 1 membuat method returnError() yang hanya mensimulasikan error dengan menunda proses selama 2 detik, lalu melemparkan pesan error tanpa penanganan. Jika error ini terjadi, aplikasi bisa langsung crash.
- Langkah 4 menambahkan method handleError() yang bertugas menangkap dan mengelola error dari returnError() menggunakan try-catch-finally. Di sini, error yang terjadi ditangkap di blok catch, lalu hasil error tersebut ditampilkan ke UI menggunakan setState. Blok finally memastikan kode tetap berjalan meskipun ada error, seperti mencetak pesan "Complete". Langkah 4 membuat aplikasi lebih aman dan tetap responsif meskipun ada error.

<br>

### **Hasil Akhir Praktikum 5**
<img src="docs/Praktikum5/prak5.gif" width="400"/>

<br>

---

## **Praktikum 6**
### **Soal 11**
Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda. <br>

#### **Pengerjaan: **
<img src="docs/Praktikum6/JawabanSoal11.png" width="400"/>

<br>

### **Soal 12** <br>
- Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?

#### **Jawaban:** <br>
<img src="docs/Praktikum6/JawabanSoal12.gif" width="400"/> <br>
Ya, saya bisa mendapatkan koordinat GPS saat menjalankan aplikasi di browser karena browser mendukung fitur geolokasi yang memanfaatkan API lokasi bawaan. API ini menggunakan data dari sumber lain, seperti jaringan Wi-Fi atau lokasi IP, bukan perangkat keras GPS langsung. Oleh karena itu, koordinat tetap dapat diakses meskipun aplikasi berjalan di browser.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. <br>

#### **Pengerjaan:** <br>
<img src="docs/Praktikum6/prak6.gif" width="400"/>

<br>

---

## **Praktikum 7**
### **Soal 13** <br>
- Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?
#### **Jawaban:** <br>
Secara UI tidak ada perbedaan yang terlihat karena kedua kode menampilkan elemen yang sama, seperti CircularProgressIndicator saat loading dan Text untuk menunjukkan hasil lokasi. Struktur tampilan seperti Scaffold, AppBar, dan tata letak juga tidak berubah. Namun, perbedaan utama ada di cara kerja kode di belakang layar, di mana pada praktikum ini menggunakan FutureBuilder untuk mengelola data dan error handling dengan lebih baik. Jadi, meskipun tampilan sama, kode yang diperbaiki lebih rapi, efisien, dan dapat menangani masalah dengan lebih baik. <br>
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- Seperti yang Anda lihat, menggunakan FutureBuilder lebih efisien, clean, dan reactive dengan Future bersama UI. <br>

#### **Pengerjaan:**
<img src="docs/Praktikum7/JawabanSoal13.gif" width="400"/>

<br>

### **Soal 14** <br>
- Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?

#### **Jawaban:** <br>
Setelah menambahkan handling error dan melakukan hot restart, tidak ada perbedaan UI jika tidak terjadi error selama pengambilan lokasi. Aplikasi akan tetap menampilkan CircularProgressIndicator saat loading dan menampilkan data lokasi (latitude dan longitude) saat berhasil. <br>
Namun, jika terjadi error (misalnya izin lokasi ditolak atau layanan lokasi dimatikan), UI akan menunjukkan teks Something terrible happened!, yang sebelumnya tidak ditangani dan hanya menghasilkan tampilan kosong (Text('')). <br>
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. <br>

#### **Pengerjaan:**
<img src="docs/Praktikum7/prak7.gif" width="400"/>

<br>

---

## **Praktikum 8**
### **Soal 15**
- Tambahkan **nama panggilan Anda** pada tiap properti `title` sebagai identitas pekerjaan Anda.
- Silakan ganti dengan warna tema favorit Anda. <br>

#### **Pengerjaan:** <br>
<img src="docs/Praktikum8/JawabanSoal15.png" width="400"/>
<br>
<img src="docs/Praktikum8/JawabanSoal15_2.png" width="400"/>

<br>

### **Soal 16**
- Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?

#### **Jawaban:** <br>
Ketika tombol Red, Green, atau Blue di layar kedua diklik, warna yang sesuai (merah, hijau, atau biru) akan dipilih, lalu layar kedua tertutup, dan layar pertama kembali dengan latar belakang yang berubah sesuai warna yang dipilih. Jika tidak memilih warna dan menekan tombol Change Color, layar kedua akan tertutup tanpa mengembalikan warna. <br>

- Gantilah 3 warna pada langkah 5 dengan warna favorit Anda! <br>

#### **Pengerjaan:**
<img src="docs/Praktikum8/JawabanSoal16.png" width="400"/> <br>

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. <br>

#### **Pengerjaan:** <br>
<img src="docs/Praktikum8/prak8.gif" width="400"/> <br>

<br>

---

## **Praktikum 9**
### **Soal 17**
- Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?

#### **Jawaban:** <br>
Ketika tombol Red, Green, atau Blue di dialog diklik, warna latar belakang layar utama akan berubah sesuai dengan warna yang dipilih (merah, hijau, atau biru). Setelah memilih warna, dialog akan ditutup dan warna yang dipilih akan dikembalikan ke layar utama. Fungsi setState() kemudian dipanggil untuk memperbarui tampilan layar utama dengan warna baru. Proses ini terjadi karena dialog muncul saat tombol Change Color ditekan, dan menggunakan Navigator.pop untuk menutup dialog dan mengembalikan warna yang dipilih ke layar utama, sehingga tampilan layar utama diperbarui. <br>

- Gantilah 3 warna pada langkah 3 dengan warna favorit Anda!

#### **Pengerjaan:** <br>
<img src="docs/Praktikum9/JawabanSoal17.png" width="400"/> <br>

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 17". <br>

#### **Pengerjaan:** <br>

<img src="docs/Praktikum9/prak9.gif" width="400"/>

---