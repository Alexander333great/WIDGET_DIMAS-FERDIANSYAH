import 'package:flutter/material.dart';

class WidgetSederhanaPage extends StatelessWidget {
  const WidgetSederhanaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        foregroundColor: Colors.white,
        title: const Text('Flutter Widget Sederhana'),
      ),
    );
  }
}
