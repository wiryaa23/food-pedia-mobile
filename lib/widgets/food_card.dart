import 'package:flutter/material.dart';
import 'package:food_pedia/screens/foodentry_form.dart';
import 'package:food_pedia/screens/list_foodentry.dart';
import 'package:food_pedia/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color; // Properti warna

  ItemHomepage(this.name, this.icon, this.color);
}

class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama

  final ItemHomepage item;

  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
      // Menentukan warna kartu
      color: item.color,
      // Sudut kartu sedikit melengkung
      borderRadius: BorderRadius.circular(12),
      child: InkWell( // Aksi yang muncul ketika kartu ditekan
        onTap: () async {
          ScaffoldMessenger.of(context) // Tampilkan pesan saat SnackBar saat kartu ditekan
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
          if (item.name == "Add New Food") {
            // Routing ke FoodEntryFormPage
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FoodEntryFormPage(),
              ),
            );
          }
          else if (item.name == "Show All Food") {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => const FoodEntryPage()
                ),
            );
          }
          else if (item.name == "Logout") {
            final response = await request.logout(
                // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                "http://127.0.0.1:8000/auth/logout/");
            String message = response["message"];
            if (context.mounted) {
                if (response['status']) {
                    String uname = response["username"];
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("$message Sampai jumpa, $uname."),
                    ));
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(message),
                        ),
                  );
                }
            }
        }
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
