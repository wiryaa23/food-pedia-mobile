import 'package:flutter/material.dart';
import 'package:food_pedia/widgets/food_card.dart';
import 'package:food_pedia/widgets/left_drawer.dart';
// import 'package:food_pedia/screens/foodentry_form.dart';

class MyHomePage extends StatelessWidget {
  final String npm = '2306152115'; // NPM
  final String name = 'Wirya Dharma Kurnia'; // Nama
  final String className = 'PBP C'; // Kelas
  final List<ItemHomepage> items = [
    ItemHomepage("Show All Food", Icons.food_bank_outlined, Colors.red[200]!),
    ItemHomepage("Add New Food", Icons.add, Colors.red[500]!),
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
        iconTheme: const IconThemeData(color: Colors.white), // Ubah warna icon drawer
      ),
      drawer: const LeftDrawer(), // Tambahkan drawer 
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
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
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

