import '../models/flashcard.dart';

class FlashcardData {
  static List<Flashcard> getFlashcards() {
    return [
      Flashcard(
        letter: 'A',
        imageUrl: 'assets/images/a.png',
        gifUrl: 'assets/gifs/a.gif',
        audioUrl: 'assets/audio/a.mp3',
        word: 'Apfel',
        pronunciation: 'ah-pfel',
      ),
    ];
  }
} 