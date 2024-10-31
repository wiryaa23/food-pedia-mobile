# Food Pedia Mobile

**Nama**: Wirya Dharma Kurnia <br />
**NPM**: 2306152115 <br />
**Kelas**: PBP C

<details>
<summary><b>Tugas 7</b></summary>

# Jawaban Soal Tugas 7


## 1. Jelaskan apa yang dimaksud dengan *stateless widget* dan *stateful widget*, dan jelaskan perbedaan dari keduanya.

*Stateless widget* dan *stateful widget* adalah dua jenis widget utama dalam pengembangan aplikasi dengan Flutter. Penjelasan mengenai keduanya adalah sebagai berikut.
- *Stateless widget*

*Stateless widget* adalah jenis widget yang tidak memiliki state internal, di mana ia bersifat statis dan tidak dapat berubah setelah dibuat. Selain itu, *widget* ini juga tidak memiliki nilai yang bisa diubah setelah ditampilkan, sehingga cocok digunakan pada elemen yang menampilkan informasi tetap, misalnya logo dan nama aplikasi. Dalam tugas kali ini, saya menggunakan *stateless widget* untuk *class* `MyHomePage`, `InfoCard`, `ItemCard` karena belum membutuhkan tampilan dinamis.

- *Stateful widget*

*Stateful widget* adalah jenis widget yang memiliki state yang bisa berubah, di mana ia bersifat dinamis dan dapat bereaksi terhadap input, tindakan pengguna, atau perubahan data. *Widget* ini cocok digunakan pada elemen yang membutuhkan pembaruan secara dinamis. Untuk menggunakan *stateful widget*, ada dua bagian yang perlu didefinisikan yaitu ***class* widget utama (stateful widget)** yang mendefinisikan struktur, dan ***class state*** yang menangani status dan memperbarui tampilan jika perlu diubah. Dalam tugas kali ini, saya belum menggunakan *stateful widget* sama sekali.


## 2. Sebutkan *widget* apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

- ***AppBar***		: Membuat *app bar* di bagian atas halaman sebagai header untuk menampilkan judul aplikasi.
- ***Column*** 		: Menyusun child element secara vertikal. Dalam proyek ini, *Column* digunakan untuk mengatur tata letak elemen-elemen secara vertikal, misalnya InfoCard dan teks "Welcome to Food Pedia".
- ***Row*** 		: Menyusun child element secara horizontal. Dalam proyek ini, *Row* digunakan untuk mengatur tata letak elemen-elemen secara horizontal, misalnya InfoCard agar NPM, nama, dan kelas tersusun sejajar ke samping.
- ***Container*** 	:  Mengatur tata letak dan dekorasi elemen pada halaman. Hal yang bisa diatur misalnya margin dan *padding*, ukuran (*height* dan *width*), dekorasi, posisi (*alignment*), serta transformasi(*transform*).
- ***Icon*** 		: Menampilkan ikon. Dalam proyek ini, *Icon* ditampilkan di tengah ItemCard untuk menjadi lambang setiap item. 
- ***Text*** 		: Menampilkan teks. Dalam proyek ini, *Text* digunakan untuk menampilkan judul aplikasi, tulisan selamat datang, nama item, dan lain-lain.
- ***Scaffold***		: Memberikan struktur dasar halaman dengan *AppBar* dan *body*.
- ***Padding****		: Memberikan jarak di sekitar *widget*. Biasanya digunakan agar elemen-elemen yang ada tidak terlalu berdekatan satu sama lain.
- ***Card***		: Menampilkan kotak kartu yang dapat memuat informasi. Dalam proyek ini, *Card* digunakan untuk menampilkan NPM, nama, dan kelas sama suatu kartu yang ada bayangannya.
- ***MediaQuery***	: Mendapatkan informasi mengenai ukuran dan orientasi layar dari perangkat yang digunakan. Dalam proyek ini, *MediaQuery* digunakan untuk menyesuaikan lebar *InfoCard* agar dapat sesuai dengan ukuran layar perangkat pengguna.
- ***GridView.count***	: Membuat tampilan dalam bentuk grid dengan jumlah kolom tertentu. Dalam proyek ini, *GridView.count* digunakan untuk menampilkan *ItemCard* dalam format grid kolom dengan jumlah 3 kolom.
- ***Material***		: Memberikan desain pada elemen yang memiliki efek ketika diklik. Dalam proyek ini, *Material* digunakan dalam memberi warna dan efek melengkung pada kartu *item*.
- ***InkWell***		: Memberikan efek/aksi pada elemen yang dapat diklik. Dalam proyek ini, *InkWell* digunakan untuk memberi efek ketukan pada *ItemCard* dengan menampilkan *SnackBar* pada saat diklik.
- ***SnackBar***		: Menampilkan pesan sementara di bagian bawah layar. Dalam proyek ini, *SnackBar* digunakan untuk menampilkan pesan tertentu kepada sesuai dengan *ItemCard* yang diklik.


## 3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi dari `setState()` adalah untuk memperbarui tampilan dari suatu widget yang berjenis *stateful* ketika ada perubahan data atau variabel yang berpengaruh pada tampilan aplikasi. Ketika `setState()` dipanggil, maka Flutter akan melakukan *rebuild* pada *widget* yang bersangkutan agar dapat menampilkan data yang terbaru.
Variabel yang terdampak dengan fungsi tersebut ialah variabel yang terletak di dalam objek *State* dari suatu *StatefulWidget*. Contoh singkatnya adalah sebagai berikut.

```dart
class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0; // variabel yang terdampak oleh setState()
  final String value = 'PBP Asik'; // variabel yang tidak terdampak oleh setState()

  void incrementCounter() {
    setState(() {
      counter++; // variabel counter diubah dalam setState()
    });
  }
  ... // sisa kode lainnya
}
```
Dalam contoh tersebut, variabel `counter` terdampak oleh `setState()` dan variabel `value` tidak.


## 4. Jelaskan perbedaan antara `const` dengan `final`.

`const` dan `final` digunakan untuk membuat variabel yang tidak dapat diubah. Perbedaan keduanya adalah sebagai berikut.
- Variabel `const` harus sudah memiliki nilai yang ditetapkan saat waktu kompilasi. Artinya, nilainya harus sudah *diassign* sejak awal. Sementara itu, variabel `final` meski nilainya hanya bisa ditetapkan satu kali, tetapi nilai tersebut bisa diatur saat waktu eksekusi.
- `const` biasanya digunakan untuk nilai yang konstan dan mutlak, sementara `final` biasanya digunakan untuk nilai yang tidak ingin diubah setelah diinisialisasi. 

Contoh mudahnya adalah `const` dapat digunakan untuk menyimpan variabel pi dalam matematika yaitu sebesar 3.14, dan `final` dapat digunakan untuk menyimpan variabel luasLingkaran yaitu sebesar 314. Dalam konteks ini, variabel pi menggunakan `const` karena nilai pi memang akan selalu 3.14 dalam konteks matematika apapun. Sementara itu, variabel luasLingkaran akan memiliki nilai 314 sepanjang jalannya program, tetapi nilai 314 itu dapat diperoleh melalui perhitungan yang telah dilakukan sebelumnya pada jalannya program.


## 5. Jelaskan bagaimana cara kamu mengimplementasikan *checklist-checklist* di atas.

- Membuat proyek baru dengan perintah `flutter create food_pedia` dan melakukan setup untuk menghubungkan proyek dengan repositori baru di GitHub.
- Membuat file `menu.dart` pada direktori `food_pedia/lib` dan menambahkan import yang diperlukan.
- Merapikan struktur proyek dengan memindahkan beberapa kode di `main.dart` ke `menu.dart`.
- Mengubah warna tema aplikasi pada `main.dart` menjadi warna merah.
- Mengubah *widget* halaman menu menjadi *stateless widget*.
- Membuat *card* sederhana yang menampilkan NPM, nama, dan kelas dan membuat *class InfoCard* untuk tampilannya.
- Membuat *button card* yang memiliki *icon* di bagian tengahnya. Tak lupa juga membuat *class ItemCard* dan menyesuaikan tampilannya sesuai yang diinginkan. 
- Mengintegrasikan *InfoCard* dan *ItemCard* untuk ditampilkan di halaman utama.
- Mengatur tampilan secara keseluruhan dengan memperhatikan hal-hal seperti *padding*, *row* dan *column*, *icon* yang digunakan, dan lain-lain.
- Menambahkan atribut *color* pada *classItemHomePage* agar dapat mengubah warna kartu lihat daftar produk, tambah produk, dan logout.
- Melakukan kustomisasi warna ketiga kartu di atas agar warna tiap kartu berbeda satu sama lain.
- Melakukan add, commit, dan push perubahan ke GitHub.

</details>