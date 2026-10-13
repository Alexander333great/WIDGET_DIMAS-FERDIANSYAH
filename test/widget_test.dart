import 'package:flutter_test/flutter_test.dart';

import 'package:widget/main.dart';

void main() {
  testWidgets('Menu utama tampil', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Menu Utama Latihan Flutter'), findsOneWidget);
    expect(find.text('1. Widget Sederhana (AppBar)'), findsOneWidget);
    expect(find.text('4. Tampilan Login Sederhana'), findsOneWidget);
  });
}
