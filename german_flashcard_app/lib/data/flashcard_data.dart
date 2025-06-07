import '../models/flashcard.dart';

class FlashcardData {
  static List<Flashcard> getFlashcards() {
    return [
      Flashcard(
        letter: 'A',
        imageUrl: 'assets/images/test.png',
        gifUrl: 'assets/gifs/test.gif',
        audioUrl: 'assets/audio/test.mp3',
        word: 'Apfel',
        pronunciation: 'ah-pfel',
      ),
    ];
  }
} 