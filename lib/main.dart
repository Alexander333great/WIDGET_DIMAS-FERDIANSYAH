import 'package:flutter/material.dart';
// Import file-file latihan yang sudah dipisah ke folder lib/
import 'widget_sederhana.dart';
import 'widget_layout.dart';
import 'widget_bertingkat.dart';
import 'login_sederhana.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kumpulan Latihan Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainMenuPage(),
    );
  }
}

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Utama Latihan Flutter'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WidgetSederhanaPage()), // Nama kelas dari widget_sederhana.dart
              );
            },
            child: const Text('1. Widget Sederhana (AppBar)'),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePageLayout()), // Nama kelas dari widget_layout.dart
              );
            },
            child: const Text('2. Widget Layout & Card (Candi Borobudur)'),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WidgetBertingkatPage()), // Nama kelas dari widget_bertingkat.dart
              );
            },
            child: const Text('3. Widget Bertingkat & Assets Gambar'),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()), // Nama kelas dari login_sederhana.dart
              );
            },
            child: const Text('4. Tampilan Login Sederhana'),
          ),
        ],
      ),
    );
  }
}