import 'package:flutter/material.dart';
import 'screens/flashcard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'German Alphabet Flashcards',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Comic Sans MS', // Child-friendly font
      ),
      home: const FlashcardScreen(),
    );
  }
}
