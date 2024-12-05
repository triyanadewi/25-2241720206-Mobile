# **Pertemuan 12 | Lanjutan State Management dengan Streams**
## Identitas Mahasiswa

> Nama  : Triyana Dewi Fatmawati <br/>
> NIM   : 2241720206 <br/>
> Kelas : TI - 3H <br/>
> Nomor : 25 <br/>

---

## **Praktikum 1: Dart Streams**
### **Langkah 1: Buat Project Baru**
Buatlah sebuah project flutter baru dengan nama **stream_nama** (beri nama panggilan Anda) di folder **week-12/src/** repository GitHub Anda.


### **Langkah 2: Buka file main.dart**
Ketiklah kode seperti berikut ini.

#### **Pengerjaan:**
![Langkah 2 Praktikum 1](../../docs/Praktikum1/l2p1.png)


> ### **Soal 1** <br>
> - Tambahkan **nama panggilan Anda** pada `title` app sebagai identitas hasil pekerjaan Anda.
> - Gantilah warna tema aplikasi sesuai kesukaan Anda.
> <br>
> #### **Pengerjaan:**
> ![Soal 1](../../docs/Praktikum1/JawabanSoal1.png)
<br>


### **Langkah 3: Buat file baru stream.dart**
Buat file baru di folder lib project Anda. Lalu isi dengan kode berikut.

#### **Pengerjaan:**
![Langkah 3 Praktikum 1](../../docs/Praktikum1/l3p1.png)


### **Langkah 4: Tambah variabel colors**
Tambahkan variabel di dalam class `ColorStream` seperti berikut.

#### **Pengerjaan:**
![Langkah 4 Praktikum 1](../../docs/Praktikum1/l4p1.png)


> ### **Soal 2** <br>
> Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel `colors` tersebut.
> <br>
> #### **Pengerjaan:**
> ![Soal 2](../../docs/Praktikum1/JawabanSoal2.png)
<br>


### **Langkah 5: Tambah method getColors()**
Di dalam `class ColorStream` ketik method seperti kode berikut. Perhatikan tanda bintang di akhir keyword `async*` (ini digunakan untuk melakukan `Stream` data)

#### **Pengerjaan:**
![Langkah 5 Praktikum 1](../../docs/Praktikum1/l5p1.png)


### **Langkah 6: Tambah perintah yield**
Tambahkan kode berikut ini.

#### **Pengerjaan:**
![Langkah 6 Praktikum 1](../../docs/Praktikum1/l6p1.png)


> ### **Soal 3** <br>
> - Jelaskan fungsi keyword `yield*` pada kode tersebut!
> - Apa maksud isi perintah kode tersebut?
> <br>
> #### **Jawaban:**
> yield* digunakan untuk meneruskan seluruh elemen dari iterable atau stream lain ke dalam stream yang sedang dihasilkan oleh generator function. <br>
> Kode tersebut menghasilkan stream warna secara periodik setiap 1 detik dengan elemen warna yang dipilih dari daftar colors berdasarkan perhitungan indeks menggunakan operasi modulus. Warna-warna akan terus berulang selama stream aktif.
<br>


### **Langkah 7: Buka main.dart**
Ketik kode impor file ini pada file `main.dart`

#### **Pengerjaan:**
![Langkah 7 Praktikum 1](../../docs/Praktikum1/l7p1.png)


### **Langkah 8: Tambah variabel**
Ketik dua properti ini di dalam `class _StreamHomePageState`

#### **Pengerjaan:**
![Langkah 8 Praktikum 1](../../docs/Praktikum1/l8p1.png)


### **Langkah 9: Tambah method changeColor()**
Tetap di file main, Ketik kode seperti berikut

#### **Pengerjaan:**
![Langkah 9 Praktikum 1](../../docs/Praktikum1/l9p1.png)


### **Langkah 10: Lakukan override initState()**
Ketika kode seperti berikut

#### **Pengerjaan:**
![Langkah 10 Praktikum 1](../../docs/Praktikum1/l10p1.png)


### **Langkah 11: Ubah isi Scaffold()**
Sesuaikan kode seperti berikut.

#### **Pengerjaan:**
![Langkah 11 Praktikum 1](../../docs/Praktikum1/l11p1.png)


### **Langkah 12: Run**
Lakukan running pada aplikasi Flutter Anda, maka akan terlihat berubah warna background setiap detik.

> ### **Soal 4** <br>
> Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
> <br>
> #### **Pengerjaan:**
> ![Soal 4](../../docs/Praktikum1/JawabanSoal4.gif)
<br>


### **Langkah 13: Ganti isi method changeColor()**
Anda boleh comment atau hapus kode sebelumnya, lalu ketika kode seperti berikut.

#### **Pengerjaan:**
![Langkah 13 Praktikum 1](../../docs/Praktikum1/l13p1.png)


> ### **Soal 5** <br>
> Jelaskan perbedaan menggunakan `listen` dan `await for` (langkah 9)!
> <br>
> #### **Jawaban:**
> `await for` digunakan untuk memproses elemen stream secara berurutan dan menunggu setiap elemen diproses satu per satu, sehingga kode akan terhenti hingga stream selesai. Hal ini cocok untuk stream yang finite atau jika kita ingin memastikan pemrosesan setiap elemen secara sinkron. Sementara itu, `listen` menggunakan pendekatan berbasis callback, di mana setiap elemen stream diproses segera setelah diterima, tanpa menghentikan eksekusi kode lainnya. Pendekatan ini lebih fleksibel, memungkinkan kita untuk menambahkan penanganan error dan notifikasi ketika stream selesai, dan lebih cocok untuk stream yang bersifat infinite atau ketika kita perlu menangani elemen secara bersamaan.
<br>

> **Catatan:** Stream di Flutter memiliki fitur yang powerfull untuk menangani data secara async. Stream dapat dimanfaatkan pada skenario dunia nyata seperti real-time messaging, unggah dan unduh file, tracking lokasi user, bekerja dengan data sensor IoT, dan lain sebagainya.


---


## **Praktikum 2: Stream controllers dan sinks**
`StreamControllers` akan membuat jembatan antara `Stream` dan `Sink`. `Stream` berisi data secara sekuensial yang dapat diterima oleh subscriber manapun, sedangkan `Sink` digunakan untuk mengisi (injeksi) data.
<br>
Secara sederhana, StreamControllers merupakan stream management. Ia akan otomatis membuat stream dan sink serta beberapa method untuk melakukan kontrol terhadap event dan fitur-fitur yang ada di dalamnya.
<br>
Anda dapat membayangkan stream sebagai pipa air yang mengalir searah, dari salah satu ujung Anda dapat mengisi data dan dari ujung lain data itu keluar. Anda dapat melihat konsep stream pada gambar diagram berikut ini.<br>

<img src="../../docs/Praktikum2/materiprak2.png" width="400"/> <br>

Di Flutter, Anda dapat menggunakan `StreamController` untuk mengontrol aliran data `stream`. Sebuah `StreamController` memiliki sebuah properti bernama `sink` yang berguna untuk insert data. Sedangkan properti `stream` berguna untuk menerima atau keluarnya data dari `StreamController` tersebut.
<br>

Pada codelab ini, kita akan menambah kode dari aplikasi stream di praktikum sebelumnya.

### **Langkah 1: Buka file stream.dart**
Lakukan impor dengan mengetik kode ini.

#### **Pengerjaan:**
![Langkah 1 Praktikum 2](../../docs/Praktikum2/l1p2.png)


### **Langkah 2: Tambah class NumberStream**
Tetap di file `stream.dart` tambah class baru seperti berikut.

#### **Pengerjaan:**
![Langkah 2 Praktikum 2](../../docs/Praktikum2/l2p2.png)


### **Langkah 3: Tambah StreamController**
Di dalam `class NumberStream` buatlah variabel seperti berikut.

#### **Pengerjaan:**
![Langkah 3 Praktikum 2](../../docs/Praktikum2/l3p2.png)


### **Langkah 4: Tambah method addNumberToSink**
Tetap di `class NumberStream` buatlah method ini

#### **Pengerjaan:**
![Langkah 4 Praktikum 2](../../docs/Praktikum2/l4p2.png)


### **Langkah 5: Tambah method close()**
#### **Pengerjaan:**
![Langkah 5 Praktikum 2](../../docs/Praktikum2/l5p2.png)


### **Langkah 6: Buka main.dart**
Ketik kode import seperti berikut

#### **Pengerjaan:**
![Langkah 6 Praktikum 2](../../docs/Praktikum2/l6p2.png)


### **Langkah 7: Tambah variabel**
Di dalam `class _StreamHomePageState` ketik variabel berikut

#### **Pengerjaan:**
![Langkah 7 Praktikum 2](../../docs/Praktikum2/l7p2.png)


### **Langkah 8: Edit initState()**
#### **Pengerjaan:**
![Langkah 8 Praktikum 2](../../docs/Praktikum2/l8p2.png)


### **Langkah 9: Edit dispose()**
#### **Pengerjaan:**
![Langkah 9 Praktikum 2](../../docs/Praktikum2/l9p2.png)


### **Langkah 10: Tambah method addRandomNumber()**
#### **Pengerjaan:**
![Langkah 10 Praktikum 2](../../docs/Praktikum2/l10p2.png)


### **Langkah 11: Edit method build()**
#### **Pengerjaan:**
![Langkah 11 Praktikum 2](../../docs/Praktikum2/l11p2.png)


### **Langkah 12: Run**
Lakukan running pada aplikasi Flutter Anda, maka akan terlihat seperti gambar berikut.

#### **Pengerjaan:**
![Langkah 12 Praktikum 2](../../docs/Praktikum2/l12p2.png)


> ### **Soal 6** <br>
> - Jelaskan maksud kode langkah 8 dan 10 tersebut!
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
> <br>
> #### **Pengerjaan:**
> ![Soal 6](../../docs/Praktikum2/JawabanSoal6.png)
<br>


### **Langkah 13: Buka stream.dart**
Tambahkan method berikut ini.

#### **Pengerjaan:**
![Langkah 13 Praktikum 2](../../docs/Praktikum2/l13p2.png)


### **Langkah 14: Buka main.dart**
Tambahkan method `onError` di dalam `class StreamHomePageState` pada method `listen` di fungsi `initState()` seperti berikut ini.

#### **Pengerjaan:**
![Langkah 14 Praktikum 2](../../docs/Praktikum2/l14p2.png)


### **Langkah 15: Edit method addRandomNumber()**
Lakukan *comment* pada dua baris kode berikut, lalu ketik kode seperti berikut ini.

#### **Pengerjaan:**
![Langkah 15 Praktikum 2](../../docs/Praktikum2/l15p2.png)


> ### **Soal 7** <br>
> - Jelaskan maksud kode langkah 13 sampai 15 tersebut!
> - Kembalikan kode seperti semula pada Langkah 15, comment `addError()` agar Anda dapat melanjutkan ke praktikum 3 berikutnya.
> <br>
> #### **Pengerjaan:**
> ![Soal 7](../../docs/Praktikum2/JawabanSoal7.png)
<br>


---


## **Praktikum 3: Injeksi data ke streams**
Skenario yang umum dilakukan adalah melakukan manipulasi atau transformasi data stream sebelum sampai pada UI end user. Hal ini sangatlah berguna ketika Anda membutuhkan untuk filter data berdasarkan kondisi tertentu, melakukan validasi data, memodifikasinya, atau melakukan proses lain yang memicu beberapa output baru. Contohnya melakukan konversi angka ke string, membuat sebuah perhitungan, atau menghilangkan data yang berulang terus tampil.
<br>
Pada praktikum 3 ini, Anda akan menggunakan `StreamTransformers` ke dalam `stream` untuk melakukan `map` dan filter data.
<br>

### **Langkah 1: Buka main.dart**
Tambahkan variabel baru di dalam `class _StreamHomePageState`

#### **Pengerjaan:**
![Langkah 1 Praktikum 3](../../docs/Praktikum3/l1p3.png)


### **Langkah 2: Tambahkan kode ini di initState**
#### **Pengerjaan:**
![Langkah 2 Praktikum 3](../../docs/Praktikum3/l2p3.png)


### **Langkah 3: Tetap di initState**
Lakukan edit seperti kode berikut.

#### **Pengerjaan:**
![Langkah 3 Praktikum 3](../../docs/Praktikum3/l3p3.png)


### **Langkah 4: Run**
Terakhir, **run** atau tekan **F5** untuk melihat hasilnya jika memang belum running. Bisa juga lakukan **hot restart** jika aplikasi sudah running. Maka hasilnya akan seperti gambar berikut ini. Anda akan melihat tampilan angka dari 0 hingga 90.

#### **Pengerjaan:**
![Langkah 4 Praktikum 3](../../docs/Praktikum3/l4p3.png)


> ### **Soal 8** <br>
> - Jelaskan maksud kode langkah 1-3 tersebut!
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
> <br>
> #### **Pengerjaan:**
> ![Soal 8](../../docs/Praktikum3/JawabanSoal8.png)
<br>


---


## Praktikum 4: Subscribe ke stream events
Dari praktikum sebelumnya, Anda telah menggunakan method `listen` mendapatkan nilai dari `stream`. Ini akan menghasilkan sebuah `Subscription`. `Subscription` berisi method yang dapat digunakan untuk melakukan `listen` pada suatu event dari `stream` secara terstruktur.<br>

Pada praktikum 4 ini, kita akan gunakan `Subscription` untuk menangani event dan error dengan teknik praktik baik (*best practice*), dan menutup `Subscription` tersebut.

### **Langkah 1: Tambah variabel**
Tambahkan variabel berikut di `class _StreamHomePageState`

#### **Pengerjaan:**
![Langkah 1 Praktikum 4](../../docs/Praktikum4/l1p4.png)


### **Langkah 2: Edit initState()**
Edit kode seperti berikut ini.

#### **Pengerjaan:**
![Langkah 2 Praktikum 4](../../docs/Praktikum4/l2p4.png)


### **Langkah 3: Tetap di initState()**
Tambahkan kode berikut ini.

#### **Pengerjaan:**
![Langkah 3 Praktikum 4](../../docs/Praktikum4/l3p4.png)


### **Langkah 4: Tambah properti onDone()**
Tambahkan dibawahnya kode ini setelah `onError`

#### **Pengerjaan:**
![Langkah 4 Praktikum 4](../../docs/Praktikum4/l4p4.png)


### **Langkah 5: Tambah method baru**
Ketik method ini di dalam `class _StreamHomePageState`

#### **Pengerjaan:**
![Langkah 5 Praktikum 4](../../docs/Praktikum4/l5p4.png)


### **Langkah 6: Pindah ke method dispose()**
Jika method `dispose()` belum ada, Anda dapat mengetiknya dan dibuat override. Ketik kode ini didalamnya.

#### **Pengerjaan:**
![Langkah 6 Praktikum 4](../../docs/Praktikum4/l6p4.png)


### **Langkah 7: Pindah ke method build()**
Tambahkan button kedua dengan isi kode seperti berikut ini.

#### **Pengerjaan:**
![Langkah 7 Praktikum 4](../../docs/Praktikum4/l7p4.png)


### **Langkah 8: Edit method addRandomNumber()**
Edit kode seperti berikut ini.

#### **Pengerjaan:**
![Langkah 8 Praktikum 4](../../docs/Praktikum4/l8p4.png)


### **Langkah 9: Run**
Anda akan melihat dua button seperti gambar berikut.

#### **Pengerjaan:**
![Langkah 9 Praktikum 4](../../docs/Praktikum4/l9p4.png)


### **Langkah 10: Tekan button ‘Stop Subscription'**
Anda akan melihat pesan di Debug Console seperti berikut.

#### **Pengerjaan:**
![Langkah 10 Praktikum 4](../../docs/Praktikum4/l10p4.png)


> ### **Soal 9** <br>
> - Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
> <br>
> #### **Pengerjaan:**
> ![Soal 9](../../docs/Praktikum4/JawabanSoal9.png)
<br>


---


## **Praktikum 5: Multiple stream subscriptions**
Secara default, stream hanya bisa digunakan untuk satu subscription. Jika Anda mencoba untuk melakukan subscription yang sama lebih dari satu, maka akan terjadi error. Untuk menangani hal itu, tersedia **broadcast** stream yang dapat digunakan untuk multiple subscriptions. Pada praktikum ini, Anda akan mencoba untuk melakukan multiple stream subscriptions.

### **Langkah 1: Buka file main.dart**
Ketik variabel berikut di `class _StreamHomePageState`

#### **Pengerjaan:**
![Langkah 1 Praktikum 5](../../docs/Praktikum5/l1p5.png)


### **Langkah 2: Edit initState()**
Ketik kode seperti berikut.

#### **Pengerjaan:**
![Langkah 2 Praktikum 5](../../docs/Praktikum5/l2p5.png)


### **Langkah 3: Run**
Lakukan run maka akan tampil error seperti gambar berikut.

#### **Pengerjaan:**
![Langkah 3 Praktikum 5](../../docs/Praktikum5/l3p5.png)


> ### **Soal 10** <br>
> Jelaskan mengapa error itu bisa terjadi ?
> <br>
> #### **Pengerjaan:**
> ![Soal 10](../../docs/Praktikum5/JawabanSoal10.png)
<br>


### **Langkah 4: Set broadcast stream**
Ketik kode seperti berikut di method `initState()`

#### **Pengerjaan:**
![Langkah 4 Praktikum 5](../../docs/Praktikum5/l4p5.png)


### **Langkah 5: Edit method build()**
Tambahkan text seperti berikut

#### **Pengerjaan:**
![Langkah 5 Praktikum 5](../../docs/Praktikum5/l5p5.png)


### **Langkah 6: Run**
Tekan button ‘**New Random Number**' beberapa kali, maka akan tampil teks angka terus bertambah sebanyak dua kali.

#### **Pengerjaan:**
![Langkah 6 Praktikum 5](../../docs/Praktikum5/l6p5.png)


> ### **Soal 11** <br>
> - Jelaskan mengapa hal itu bisa terjadi ?
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
> <br>
> #### **Pengerjaan:**
> ![Soal 11](../../docs/Praktikum5/JawabanSoal11.png)
<br>


---


## **Praktikum 6: StreamBuilder**
`StreamBuilder` adalah sebuah widget untuk melakukan listen terhadap event dari stream. Ketika sebuah event terkirim, maka akan dibangun ulang semua turunannya. Seperti halnya widget `FutureBuilder` pada pertemuan pekan lalu, `StreamBuilder` berguna untuk membangun UI secara reaktif yang diperbarui setiap data baru tersedia.

### **Langkah 1: Buat Project Baru**
Buatlah sebuah project flutter baru dengan nama **streambuilder_nama** (beri nama panggilan Anda) di folder **week-12/src/** repository GitHub Anda.


### **Langkah 2: Buat file baru stream.dart**
Ketik kode ini

#### **Pengerjaan:**
![Langkah 2 Praktikum 6](../../docs/Praktikum6/l2p6.png)


### **Langkah 3: Tetap di file stream.dart**
Ketik kode seperti berikut.

#### **Pengerjaan:**
![Langkah 3 Praktikum 6](../../docs/Praktikum6/l3p6.png)


### **Langkah 4: Edit main.dart**
Ketik kode seperti berikut ini.

#### **Pengerjaan:**
![Langkah 4 Praktikum 6](../../docs/Praktikum6/l4p6.png)


### **Langkah 5: Tambah variabel**
Di dalam `class _StreamHomePageState`, ketika variabel ini.

#### **Pengerjaan:**
![Langkah 5 Praktikum 6](../../docs/Praktikum6/l5p6.png)


### **Langkah 6: Edit initState()**
Ketik kode seperti berikut.

#### **Pengerjaan:**
![Langkah 6 Praktikum 6](../../docs/Praktikum6/l6p6.png)


### **Langkah 7: Edit method build()**
#### **Pengerjaan:**
![Langkah 7 Praktikum 6](../../docs/Praktikum6/l7p6.png)


### **Langkah 8: Run**
Hasilnya, setiap detik akan tampil angka baru seperti berikut.

#### **Pengerjaan:**
![Langkah 8 Praktikum 6](../../docs/Praktikum6/l8p6.png)


> ### **Soal 12** <br>
> - Jelaskan maksud kode pada langkah 3 dan 7 !
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
> <br>
> #### **Pengerjaan:**
> ![Soal 12](../../docs/Praktikum6/JawabanSoal12.png)
<br>


---


## **Praktikum 7: BLoC Pattern**
Ketika menggunakan pola BLoC, maka segalanya merupakan stream event. BLoC atau **Business Logic Component** adalah lapisan antara semua sumber data dan UI yang mengonsumsi data itu. Contohnya seperti sumber data dari HTTP layanan web servis atau JSON dari sebuah basis data.
<br>
Sebuah BLoC menerima stream data dari sumbernya, proses itu membutuhkan logika bisnis Anda, dan return stream data ke subscriber-nya. Perhatikan diagram pola kerja BLoC berikut ini.
<br>
<img src="../../docs/Praktikum7/materiprak7.png" width="400"/> <br>
Alasan utama menggunakan BLoC adalah memisahkan logika bisnis aplikasi dengan presentasi UI pada widget, terutama akan sangat berguna ketika aplikasi Anda mulai semakin kompleks dan membutuhkan akses state di berbagai tempat. Hal ini akan membuat semakin mudah dalam menggunakan kode Anda, pada beberapa bagian di aplikasi atau bahkan berbeda aplikasi. Selain itu, BLoC secara independen berdiri sendiri dengan UI, sehingga sangat mudah dilakukan isolasi dalam proses testing.
<br>
Pada praktikum codelab ini, Anda akan membuat aplikasi sederhana menggunakan BLoC, namun Anda dapat dengan mudah mengembangkannya untuk aplikasi yang lebih besar ruang lingkupnya.

### **Langkah 1: Buat Project baru**
Buatlah sebuah project flutter baru dengan nama **bloc_random_nama**(beri nama panggilan Anda) di folder **week-12/src/** repository GitHub Anda. Lalu buat file baru di folder `lib` dengan nama `random_bloc.dart`


### **Langkah 2: Isi kode random_bloc.dart**
Ketik kode impor berikut ini.

#### **Pengerjaan:**
![Langkah 2 Praktikum 7](../../docs/Praktikum7/l2p7.png)


### **Langkah 3: Buat class RandomNumberBloc()**
#### **Pengerjaan:**
![Langkah 3 Praktikum 7](../../docs/Praktikum7/l3p7.png)


### **Langkah 4: Buat variabel StreamController**
Di dalam `class RandomNumberBloc()` ketik variabel berikut ini

#### **Pengerjaan:**
![Langkah 4 Praktikum 7](../../docs/Praktikum7/l4p7.png)


### **Langkah 5: Buat constructor**
#### **Pengerjaan:**
![Langkah 5 Praktikum 7](../../docs/Praktikum7/l5p7.png)


### **Langkah 6: Buat method dispose()**
#### **Pengerjaan:**
![Langkah 6 Praktikum 7](../../docs/Praktikum7/l6p7.png)


### **Langkah 7: Edit main.dart**
#### **Pengerjaan:**
![Langkah 7 Praktikum 7](../../docs/Praktikum7/l7p7.png)


### **Langkah 8: Buat file baru random_screen.dart**
Di dalam folder `lib` project Anda, buatlah file baru ini.

#### **Pengerjaan:**
![Langkah 8 Praktikum 7](../../docs/Praktikum7/l8p7.png)


### **Langkah 9: Lakukan impor material dan random_bloc.dart**
Ketik kode ini di file baru `random_screen.dart`

#### **Pengerjaan:**
![Langkah 9 Praktikum 7](../../docs/Praktikum7/l9p7.png)


### **Langkah 10: Buat StatefulWidget RandomScreen**
Buatlah di dalam file `random_screen.dart`

#### **Pengerjaan:**
![Langkah 10 Praktikum 7](../../docs/Praktikum7/l10p7.png)


### **Langkah 11: Buat variabel**
Ketik kode ini di dalam `class _RandomScreenState`

#### **Pengerjaan:**
![Langkah 11 Praktikum 7](../../docs/Praktikum7/l11p7.png)


### **Langkah 12: Buat method dispose()**
Ketik kode ini di dalam `class _StreamHomePageState`

#### **Pengerjaan:**
![Langkah 12 Praktikum 7](../../docs/Praktikum7/l12p7.png)


### **Langkah 13: Edit method build()**
Ketik kode ini di dalam `class _StreamHomePageState`

#### **Pengerjaan:**
![Langkah 13 Praktikum 7](../../docs/Praktikum7/l13p7.png)


<br>

Run aplikasi, maka Anda akan melihat angka acak antara angka 0 sampai 9 setiap kali menekan tombol `FloactingActionButton`.

#### **Pengerjaan:**
![Run Praktikum 7](../../docs/Praktikum7/runp7.png)


> ### **Soal 13** <br>
> - Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
> <br>
> #### **Pengerjaan:**
> ![Soal 13](../../docs/Praktikum7/JawabanSoal13.png)
<br>