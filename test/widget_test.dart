// Ini adalah tes widget dasar Flutter.
//
// Untuk melakukan interaksi dengan widget dalam tes Anda, gunakan WidgetTester
// utilitas di paket flutter_test. Misalnya, Anda dapat mengirim tap dan scroll
// gestures. Anda juga dapat menggunakan WidgetTester untuk menemukan widget anak di pohon widget,
// membaca teks, dan memverifikasi bahwa nilai properti widget sudah benar.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:web_service/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Membangun aplikasi kita dan memicu frame.
    await tester.pumpWidget(const MyApp(title: 'My App Title'));

    // Verifikasi bahwa counter kita dimulai dari 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Ketuk ikon '+' dan memicu frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifikasi bahwa counter kita telah meningkat.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
