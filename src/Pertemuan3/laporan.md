# Praktikum 1: Menerapkan Control Flows ("if/else")

Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

## Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().<br>
<img src="/docs/Pertemuan3/Praktikum1/langkah1.png" alt="Langkah1" width="400"/>

#### Pengerjaan: 
> <img src="/docs/Pertemuan3/Praktikum1/pengerjaan1.png" alt="Pengerjaan-Langkah1" width="600"/>

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

#### Pengerjaan:
> <img src="/docs/Pertemuan3/Praktikum1/pengerjaan2.png" alt="Pengerjaan-Langkah2" width="600"/>

#### Jawaban:
> Setelah dieksekusi (Run) kode terjadi error. Hal ini dikarenakan penggunaan huruf kapital pada kata kunci If baris 5 dan Else baris 7.

#### Perbaikan:
> Setelah dilakukan perbaikan dengan mengganti awalan If baris 5 dan Else baris 7 dengan huruf kecil. Hasil outputnya seperti berikut:<br>
>
><img src="/docs/Pertemuan3/Praktikum1/perbaikan1.png" alt="Perbaikan-Langkah2" width="600"/>

## Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.<br>
<img src="/docs/Pertemuan3/Praktikum1/langkah3.png" alt="Langkah3" width="400"/><br>
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.

#### Pengerjaan:
><img src="/docs/Pertemuan3/Praktikum1/pengerjaan3.png" alt="Pengerjaan-Langkah3" width="600"/>

#### Jawaban:
> Setelah dieksekusi (Run) kode terjadi error pada baris ke 13 karena deklarasi variabel test yang berulang dan pada baris ke 14 karena variabel test bertipe String, tetapi kondisi if mengharapkan nilai bertipe bool.

#### Perbaikan:
Setelah dilakukan perbaikan. Hasil outputnya seperti berikut:
><img src="/docs/Pertemuan3/Praktikum1/perbaikan2.png" alt="Perbaikan-Langkah3" width="600"/><br>

<hr>

> #### Equality checking and type coercion
> Di JavaScript, pemeriksaan dua variable dapat menggunakan double "==" atau triple "===". Untuk double "==" hanya membandingkan nilainya saja, sedangkan triple "===" dibandingkan dengan tipe datanya. Contohnya dalam JavaScript, "7" == 7 akan bernilai true, tetapi "7" === 7 akan bernilai false. Ini bisa jadi sebuah bug jika Anda lupa dengan operator ini. Dart cukup menggunakan double "==" untuk membandingkan nilai sekaligus tipe datanya.

<br><hr><hr><br>

# Praktikum 2: Menerapkan Perulangan "while" dan "do-while"

Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

## Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().<br>
<img src="/docs/Pertemuan3/Praktikum2/langkah1.png" alt="Langkah1" width="400"/>

#### Pengerjaan: 
> <img src="/docs/Pertemuan3/Praktikum2/pengerjaan1.png" alt="Pengerjaan-Langkah1" width="600"/>

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

#### Pengerjaan:
> <img src="/docs/Pertemuan3/Praktikum2/pengerjaan2.png" alt="Pengerjaan-Langkah2" width="600"/>

#### Jawaban:
> Setelah dieksekusi (Run) kode terjadi error. Hal ini dikarenakan variabel counter belum dideklarasikan, sehingga perlu dideklarasikan dan diinisialisasi terlebih dahulu.

#### Perbaikan:
Setelah dilakukan perbaikan dengan mendeklarasikan dan menginisialisasi variabel counter terlebih dahulu sebelum menggunakannya di dalam loop. Hasil outputnya seperti berikut:
><img src="/docs/Pertemuan3/Praktikum2/perbaikan1.png" alt="Perbaikan-Langkah2" width="600"/><br>
> 
> Disini saya menambahkan deklarasi variabel counter sebagai tipe int dan menginisialisasinya dengan nilai 25. Karena loop akan terus berjalan selama counter kurang dari 33 dan setiap iterasi nilai counter akan dicetak dan ditambah 1. Sehingga, variabel counter akan dicetak mulai dari 25 sampai 32.

## Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.<br>
<img src="/docs/Pertemuan3/Praktikum2/langkah3.png" alt="Langkah3" width="400"/><br>
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan *do-while*.

#### Pengerjaan:
><img src="/docs/Pertemuan3/Praktikum2/pengerjaan3.png" alt="Pengerjaan-Langkah3" width="600"/>

#### Jawaban:
> Setelah dieksekusi (Run) kode tidak terjadi error, output yang dihasilkan yaitu angka 25 sampai 76. Hal ini dikarenakan: 
> - while loop mencetak nilai counter dari 25 hingga 32.
> - do-while loop mulai dari counter = 33 hingga 76.

<br><hr><hr><br>

# Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"

Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

## Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().<br>
<img src="/docs/Pertemuan3/Praktikum3/langkah1.png" alt="Langkah1" width="400"/>

#### Pengerjaan: 
> <img src="/docs/Pertemuan3/Praktikum3/pengerjaan1.png" alt="Pengerjaan-Langkah1" width="600"/>

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

#### Pengerjaan:
> <img src="/docs/Pertemuan3/Praktikum3/pengerjaan2.png" alt="Pengerjaan-Langkah2" width="600"/>

#### Jawaban:
> Setelah dieksekusi (Run) kode terjadi error. Hal ini dikarenakan :
> 1. Tidak mendeklarasikan variabel index sebelum menggunakannya dalam loop for. 
> 2. Menggunakan Index (dengan huruf kapital) yang belum dideklarasikan sebagai variabel. Dart bersifat case-sensitive, sehingga Index dan index dianggap berbeda. 
> 3. Tidak menggunakan operator ++ untuk mengincrement index. <br>
>
> Jadi, perlu dideklarasikan terlebih dahulu, menggunakan case yang konsisten untuk nama variabelnya, dan menggunakan index++ untuk mengincrement index.

#### Perbaikan:
Setelah dilakukan perbaikan dengan mendeklarasikan variabel index, menggunakan case yang konsisten untuk nama variabel, dan menggunakan index++ untuk mengincrement index sebelum menggunakannya di dalam loop. Hasil outputnya seperti berikut:
><img src="/docs/Pertemuan3/Praktikum3/perbaikan1.png" alt="Perbaikan-Langkah2" width="600"/><br>
>
> Pada kode program di atas saya menambahkan deklarasi variabel index sebagai tipe int. Karena loop akan terus berjalan selama index kurang dari 27 dan setiap iterasi nilai index akan dicetak dan ditambah 1. Sehingga, variabel index akan dicetak mulai dari 10 sampai 26.

## Langkah 3
Tambahkan kode program berikut di dalam *for-loop*, lalu coba eksekusi (Run) kode Anda.<br>
<img src="/docs/Pertemuan3/Praktikum3/langkah3.png" alt="Langkah3" width="400"/><br>
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan *for* dan *break-continue*

#### Pengerjaan:
><img src="/docs/Pertemuan3/Praktikum3/pengerjaan3.png" alt="Pengerjaan-Langkah3" width="600"/>

#### Jawaban:
> Setelah dieksekusi (Run) kode terjadi error pada baris ke 4 dan 5 karena huruf awal if else ditulis menggunakan kapital. Selain itu, menggunakan Index (dengan huruf kapital). Dart bersifat case-sensitive, sehingga Index dan index dianggap berbeda. 

#### Perbaikan:
Setelah dilakukan perbaikan. Hasil outputnya seperti berikut:
><img src="/docs/Pertemuan3/Praktikum3/perbaikan2.png" alt="Perbaikan-Langkah3" width="600"/><br>
>
> Kode di atas menjalankan perulangan dari index = 10 hingga index < 27, mencetak setiap nilai index. Jika index mencapai 21, perulangan akan dihentikan menggunakan break. Dengan demikian, hanya nilai dari 10 hingga 21 yang dicetak. Struktur if dan else if berfungsi untuk mengontrol kapan perulangan harus berhenti atau melewatkan iterasi tertentu, namun dalam kasus ini, perintah continue tidak mempengaruhi hasil karena tidak ada kondisi yang memenuhi syarat tersebut di perulangan yang diberikan.

<br><hr><hr><br>

# Tugas Praktikum

Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

## Soal 1:
Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya!

## Soal 2:
Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.

#### Jawaban:
><img src="/docs/Pertemuan3/Tugas/jawaban-soal2.png" alt="Tugas Soal 2" width="600"/><br>
>
> Kode program di atas mengecek bilangan prima dari 0 hingga 201 menggunakan fungsi isPrima yang memeriksa apakah sebuah bilangan memiliki pembagi selain 1 dan dirinya sendiri. Jika bilangan tersebut adalah prima, maka akan mencetak bilangan prima tersebut beserta nama "Triyana Dewi Fatmawati" dan NIM "2241720206".


## Soal 3:
Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!