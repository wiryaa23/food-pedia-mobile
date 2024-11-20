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

<details>
<summary><b>Tugas 8</b></summary>

# Jawaban Soal Tugas 8


## 1. Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

Kegunaan `const` dalam Flutter adalah untuk membuat variabel dengan nilai yang sudah ditetapkan saat waktu kompilasi. `const` akan membuat waktu kompilasi variabel tersebut menjadi konstan. 

**Beberapa keuntungan menggunakan `const` pada kode Flutter adalah sebagai berikut.**

- Peningkatan kinerja proyek		  : Karena waktu kompilasinya konstan, `const` tidak akan diinisialisasi ulang ketika proses *rebuild*. Objek dengan `const` akan dibuat sekali di memori saat program pertama kali dijalankan, sehingga jika Flutter di-*rebuild* maka objek tersebut tidak ikut dibuat ulang.
- Efisiensi memori			          : Waktu kompilasi yang konstan memungkinkan suatu variabel untuk dibagi antar instance, sehingga dapat mengurangi penggunaan memori.
- Membantu dalam menangani error  : Nilai `const` tidak bisa diubah setelah ditetapkan, sehingga dapat membantu menemukan kesalahan jika ada perubahan yang tak terduga sejak program di-*compile*.


**`const` sebaiknya digunakan ketika:**
- Membuat widget/elemen/komponen/struktur UI apapun yang statis (tidak akan berubah).
- Membuat variabel yang nilainya tetap sejak proses *compile*.

**`const` sebaiknya tidak digunakan ketika:**
- Membuat widget yang memiliki *state*, karena akan membutuhkan pembaruan untuk menyesuaikan dengan perubahan data.
- Membuat variabel yang nilainya belum ditetapkan saat proses *compile*.



## 2. Jelaskan dan bandingkan penggunaan *Column* dan *Row* pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

*Column* dan *Row* merupakan dua layout utama yang sering digunakan dalam menyusun elemen dalam Flutter.

- ***Column***

Digunakan untuk menyusun widget elemen *children*-nya secara vertikal. *Column* memiliki beberapa properti utama, seperti *mainAxisAlignment* untuk mengatur posisi widget secara vertikal, dan *crossAxisAlignment* untuk mengatur posisi widget secara horizontal.

Contoh implementasi:
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("Nama"),
    Text("NPM"),
    Text("Kelas"),
  ],
)
```
Dalam tugas ini, implementasi *Column* banyak ditemukan pada `foodentry_form.dart`, `menu.dart`, `food_card.dart`, dan `left_drawer.dart`.

- ***Row***

Digunakan untuk menyusun widget elemen *children*-nya secara horizontal. *Row* juga memiliki properti utama yang sama seperti *Column*, meski terdapat sedikit perbedaan dalam fungsionalitasnya. Pada *Row*, *mainAxisAlignment* digunakan untuk mengatur posisi widget secara horizontal, sedangkan *crossAxisAlignment* untuk mengatur posisi widget secara vertikal.

Contoh implementasi:
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Text("Nama"),
    Text("NPM"),
    Text("Kelas"),
  ],
)
```
Dalam tugas ini, implementasi *Row* dapat dilihat pada `menu.dart` khususnya pada bagian yang menampilkan *InfoCard* NPM, nama, dan kelas.


## 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman *form* yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Elemen input yang digunakan pada halaman *form* pada tugas kali ini hanyalah *TextFormField* saja. *TextFormField* digunakan untuk menerima input teks, di mana pada tugas kali ini ada 3 buah form yang berbeda yakni *Food* untuk input nama makanan, *Amount* untuk input jumlah makanan, dan *Description* untuk deskripsi makanan.

Selain *TextFormField*, ada elemen-elemen input Flutter lain yang belum digunakan pada tugas kali ini, yaitu sebagai berikut.

- *TextField*

Digunakan untuk mengambil input sederhana. Sejatinya, *TextField* mirip dengan *TextFormField*. Hanya saja, *TextFormField* adalah *TextField* dengan fungsionalitas tambahan yang salah satunya untuk validasi. Tugas kali ini menggunakan *TextFormField* karena lebih praktis untuk validasi yang harus dilakukan.

- *Checkbox*

Digunakan untuk memilih opsi yang diinginkan. Adapun versi lebih tinggi dari *Checkbox* yaitu *CheckboxListTile*. Perbedaan utamanya adalah *Checkbox* lebih fleksibel dan sederhana karena hanya menampilkan kontak centang tanpa label teks meski membutuhkan tata letak tambahan untuk labelnya, sedangkan *CheckboxListTile* menampilkan kotak centang dengan label teks di sebelahnya dan cocok untuk form yang memiliki banyak opsi pilihan.

- *Radio*

Digunakan untuk memilih salah satu pilihan dari beberapa opsi yang disediakan.

- *Switch*

Digunakan untuk membuat *toggle* yang menampilkan salah satu status yang dipilih saat ini. *Switch* juga memiliki versi lebih tinggi seperti *Checkbox*, yaitu *SwitchListTile*. Perbedaannya pun mirip dengan *Checkbox* dan *CheckboxListTile*, di mana *Switch* lebih fleksibel dan sederhana, sedangkan *SwtichListTile* lebih mudah dalam menampilkan label di samping *toggle*.

- *DropdownButton*

Digunakan untuk memilih suatu pilihan dari opsi yang disediakan pada daftar *dropdown*. 

- *Slider*

Digunakan untuk memilih nilai tertentu dari rentang yang telah disediakan. Cara kerjanya adalah dengan menggeser tombol di sepanjang *track* tertentu.

- *DateTimeField*

Digunakan untuk memilih tanggal atau waktu tertentu seperti menyertakan hari, bulan, dan tahun, atau bisa juga sampai jam, menit, dan detik.


## 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Untuk mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten, hal yang bisa dilakukan adalah menentukan tema global dengan *MaterialApp*. *MaterialApp* akan mendefinisikan `theme: ThemeData()` yang akan mengatur pengaturan warna, *style button*, jenis *font*, dan lain-lain. Biasanya *MaterialApp* digunakan di file `main.dart`.


Pada tugas kali ini, saya mengimplementasikan tema pada aplikasi yang saya buat dengan mendefinisikannya secara global di file `main.dart` dengan *MaterialApp* dan properti *theme*. Tema warna yang saya gunakan untuk aplikasi ini adalah warna merah. Implementasinya pada kode saya secara khusus dapat dilihat dari cuplikan kode di bawah ini.
```dart
theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
        ).copyWith(secondary: Colors.red[300]),
        useMaterial3: true,
      ),
```


## 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Untuk menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter, saya menggunakan `Navigator.push()` dan `Navigator.pushReplacement()` sesuai kebutuhan. Keduanya akan memiliki parameter `context` dan `MaterialPageRoute()`, yang mengandung informasi yang dibutuhkan program untuk mengarahkan pengguna ke halaman yang diminta ketika terjadi suatu *event* yang men-*trigger* perpindahan halaman. Perbedaan dari kedua fungsi tersebut adalah `Navigator.push()` akan menambahkan halaman baru ke dalam *stack*, sehingga pengguna dapat kembali ke halaman sebelumnya dengan `Navigator.pop()`. Sementara pada `Navigator.pushReplacement()`, halaman yang ada saat ini dihapus dari *stack* dan langsung diganti dengan halaman baru yang diminta pengguna, sehingga pengguna tidak dapat kembali ke halaman sebelumnya.

Selain itu, navigasi dalam aplikasi juga didukung dengan adanya *Drawer* di sisi kiri layar. *Drawer* berfungsi untuk memudahkan pengguna dalam mengakses halaman-halaman yang ada, karena setiap *item* di dalam *Drawer* mewakili fitur/halaman yang ada dalam aplikasi secara keseluruhan. Setiap *item* dalam *Drawer* kemudian juga dipasangkan dengan `Navigator.push()` atau `Navigator.pushReplacement()` untuk melakukan *routing* ke halaman yang bersangkutan ketika *item* tersebut ditekan.

Dalam tugas kali ini, saya menggunakan `Navigator.push()` di `food_card.dart` dan `left_drawer.dart` sebagai *event* yang ter-*trigger* ketika menekan tombol *Add New Food*. Sementara itu, saya menggunakan `Navigator.pushReplacement()` di `left_drawer.dart` sebagai *event* yang ter-*trigger* ketika menekan tombol *Home*.

</details>

<details>
<summary><b>Tugas 9</b></summary>

# Jawaban Soal Tugas 9


## 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

Kita perlu membuat model untuk pengambilan atau pengiriman data JSON karena model digunakan dalam mendefinisikan struktur data. Model mempermudah proses pemetaan data JSON sehingga strukturnya menjadi terorganisir. Dengan demikian, proses validasi, manipulasi, dan pengolahan data juga akan menjadi lebih mudah. Jika kita tidak menggunakan model, maka penanganan data harus dilakukan secara manual. Hal tersebut jauh lebih rumit karena data lebih rawan error, sulit di-*maintain*, dan harus membuat proses tertentu lagi untuk menyamakan tipe data untuk suatu field data. Selain itu, tidak menggunakan model berpotensi membuka celah untuk masalah keamanan seperti injeksi data yang berbahaya atau manipulasi data.


## 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini.

Library http yang diimplementasikan pada tugas ini memiliki beberapa fungsi dalam aplikasi Flutter. Fungsi yang pertama adalah untuk mengirim request HTTP ke server backend, seperti GET dan POST. Fungsi lainya yaitu menerima respons dari server seperti mem-*parsing* data JSON yang di-*return*. Secara umum, library http bertugas sebagai penghubung antara aplikasi Flutter dan API backend untuk mengurus persoalan pertukaran data yang dilakukan pada aplikasi.


## 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

CookieRequest merupakan sebuah kelas untuk mengelola request HTTP di aplikasi Flutter, khususnya untuk aplikasi yang memiliki autentikasi berbasis cookie. CookieRequest berfungsi untuk menyimpan cookie sesi dari user, agar dapat mempertahankan status autentikasi user tersebut misalnya dalam login. Cookie ini akan ikut dikirim secara otomatis bersama request HTTP jika request tersebut memerlukan autentikasi, sehingga user tidak perlu login ulang setiap akan menggunakan fitur yang memerlukan autentikasi. Instance CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter agar semua fitur aplikasi yang memerlukan autentikasi dapat memiliki status sesi yang sama tanpa harus dikelola kembali pada setiap fitur aplikasi. Selain itu, membagikannya ke semua komponen juga akan membantu mengelola cookie dengan lebih konsisten dan efisien.


## 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

Mekanisme pengiriman data pada Flutter terdiri dari beberapa langkah. Pertama, akan dilakukan pengambilan input user, yang dilakukan setelah user memasukkan data melalui form. Data tersebut kemudian diolah di *Frontend* terlebih dahulu untuk validasi dasar, baru dikirim ke *Backend* melalui request HTTP seperti POST. Data ini biasanya dikirim dalam format JSON. Setelah data selesai diproses di *Backend*, data akan dikirim kembali ke Flutter sebagai respons dari server. Respons ini akan diterima dan ditampilkan kepada user sesuai dengan format UI atau *interface* yang telah dibuat pada aplikasi Flutter.


## 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Mekanisme autentikasi melibatkan beberapa langkah antara aplikasi Flutter sebagai *Frontend* dan Django sebagai *Backend*. Dimulai dari proses login, user akan mengisi data seperti *username* dan *password* yang kemudian dikirim ke Django melalui request HTTP POST. Django akan melakukan validasi dan jika autentikasi tersebut berhasil, maka Django akan mengembalikan cookie atau token sesi yang disimpan di CookieRequest ke Flutter sehingga user dapat menggunakan fitur user. 

Untuk proses registerasi, user juga akan mengirim data ke Django untuk mendaftarkan kredensial yang akan digunakan. Server Django akan melakukan validasi register dan jika semua syarat pembuatan akun terpenuhi, Django akan membuat akun baru dan menyimpan data user ke database.

Sementara itu untuk proses logout, Flutter akan mengirimkan request kepada Django untuk menghapus sesi user tersebut. Setelah diterima, Django akan memastikan user benar-benar sudah keluar kemudian menghapus token autentikasi. User kemudian akan diarahkan kembali ke halaman login aplikasi.


## 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

- Fitur pertama yang saya implementasikan adalah fitur register. Saya membuat aplikasi `authentication` dan menambahkan fungsi register di `views.py` untuk melakukan validasi input.
- Melakukan konfigurasi path `authentication` di `urls.py` proyek utama.
- Membuat `register.dart` pada Flutter yang isinya sebagai tampilan form registrasi dengan widget-widget yang dibutuhkan untuk keperluan registerasi. Form ini kemudian dihubungkan dengan endpoint Django dengan package `pbp_django_auth`, dan akan menampilkan *error message* jika registrasi gagal, serta mengarahkan ke halaman login jika registrasi berhasil.
- Membuat halaman login pada Flutter. Dilakukan dengan menambahkan fungsi login di `views.py` proyek Django untuk verifikasi kredensial, dan melakukan konfigurasi path di `urls.py`. Sementara di Flutter, saya membuat `login.dart` sebagai tampilan form login. Form ini dilengkapi dengan CookieRequest dari `pbp_django_auth` untuk mengirim data user yang login ke server Django.
- Melakukan integrasi sistem autentikasi Django dengan Flutter. Hal ini dilakukan dengan mengatur middleware CorsMiddleware pada `settings.py` proyek Django agar dapat mendukung komunikasi antar domain. Tak lupa juga menambahkan variabel konfigurasi seperti *CORS_ALLOW_ALL_ORIGINS* dan *ALLOWED_HOSTS*. Untuk Flutter, saya menambahkan *Provider* pada `main.dart` untuk menyediakan objek CookieRequest ke seluruh aplikasi agar session user dapat digunakan dalam aplikasi secara global.
- Karena model product pada Django saya memiliki atribut seperti *name*, *price*, *description*, *quantity*, dan *rating*, maka pada Flutter saya menggunakan *Quicktype* untuk membuat model Dart yang sesuai dari data JSON yang dihasilkan oleh endpoint Django.
- Membuat halaman daftar item pada Flutter yaitu `list_foodentry.dart` dengan memakan FutureBuilder untuk emngambil data dari endpoint Django menggunakan CookieRequest.get. Data kemudian ditampilkan dengan widget ListView.builder agar dapat menampilkan atributnya seperti *name*, *price*, *description*, *quantity*, dan *rating*. Tak lupa saya juga memastikan view JSON agar hanya menampilkan item yang dibuat oleh user yang sedang login, di mana hal ini dilakukan menggunakan request.user.
- Membuat fitur logout. Pada Django, saya membuat fungsi logout pada `views.py` yang memanggil `auth_logout` untuk menghapus sesi dari user yang sedang login. Sementara pada Flutter, saya juga mengimplementasikan fitur ini dengan membuat fungsi tombol logout sehingga ketika ditekan akan mengarahkan user kembali ke halaman login.
- Mengintegrasikan form input di Flutter dengan Django. Pada Django, saya menambahkan path `create-flutter/` untuk menerima data dari Flutter dan menyimpannya ke database Django. Sementara pada Flutter, saya membuat form dengan `pbp_django_auth` untuk mengirinm data form ke Django.
- Mengubah tampilan yang ditampilkan oleh `foodentry.list` menjadi menampilkan semua item yang dibuat oleh user, namun hanya beberapa data dari masing-masing item yang ditampilkan yaitu *name*, *price*, dan *description*.
- Membuat `food_detail.dart` yang terhubung dengan setiap item di `foodentry.list`. Jika item pada `foodentry.list` ditekan, maka akan menampilkan halaman `food_detail.dart` yang memunculkan seluruh informasi mengenai item tersebut.
- Melakukan add, commit, dan push perubahan ke GitHub.


</details>

