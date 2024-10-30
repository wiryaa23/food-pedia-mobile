import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String npm = '2306152115'; // NPM
  final String name = 'Wirya Dharma Kurnia'; // Nama
  final String className = 'PBP C'; // Kelas
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.mood, Colors.red[200]!),
    ItemHomepage("Tambah Produk", Icons.add, Colors.red[500]!),
    ItemHomepage("Logout", Icons.logout, Colors.red[900]!),
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold untuk struktur dasar halaman dengan AppBar dan body
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Food Pedia',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Widget disusun secara vertikal dalam sebuah kolom
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              // Tampilkan InfoCard secara horizontal
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),
            // Jarak vertikal sebanyak 16 unit
            const SizedBox(height: 16.0),

            // Widget berikutnya di tengah halaman
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Food Pedia',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ), 
                    ),
                  ),

                  // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true, // Agar grid menyesuaikan tinggi konten
                    // Tampilkan ItemCard dan masing-masing dengan warna yang berbeda
                    children: items.asMap().entries.map((entry) {
                      int index = entry.key;
                      ItemHomepage item = entry.value;
                      return ItemCard(item, colorIndex: index);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Membuat kotak kartu dengan bayangan
      elevation: 2.0,
      child: Container(
        // Mengukur ukuran dan jarak di dalam kartu
        width: MediaQuery.of(context).size.width / 3.5, // menyesuaikan dengan lebar device yang digunakan
        padding: const EdgeInsets.all(16.0),
        // Widget disusun secara vertikal dalam kolom
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color; // Properti warna

  ItemHomepage(this.name, this.icon, this.color);
}

class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama

  final ItemHomepage item;
  final int colorIndex;


  ItemCard(this.item, {super.key, required this.colorIndex});

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna kartu
      color: item.color,
      // Sudut kartu sedikit melengkung
      borderRadius: BorderRadius.circular(12),
      child: InkWell( // Aksi yang muncul ketika kartu ditekan
        onTap: () {
          ScaffoldMessenger.of(context) // Tampilkan pesan saat SnackBar saat kartu ditekan
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Konten disimpan di tengah kartu
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
