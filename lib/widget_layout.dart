import 'package:flutter/material.dart';

class HomePageLayout extends StatelessWidget {
  const HomePageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        foregroundColor: Colors.white,
        title: const Text('Flutter Layout'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            const Row(
              children: <Widget>[
                Icon(Icons.archive),
                Text(
                  'Artikel Terbaru',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/60.jpg',
                    errorBuilder: (context, error, stackTrace) =>
                        const Text('Gagal memuat gambar'),
                  ),
                  const Text('Candi Borobudur'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}