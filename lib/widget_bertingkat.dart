import 'package:flutter/material.dart';

class WidgetBertingkatPage extends StatelessWidget {
  const WidgetBertingkatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Candi Borobudur')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Menggunakan Image.asset untuk gambar lokal (assets/images/60.jpg)
            Image.asset(
              'assets/images/60.jpg',
              width: 250,
              height: 180,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Text('Gagal memuat gambar'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Candi Borobudur, Indonesia',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
