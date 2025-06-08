import '../models/flashcard.dart';
import 'languages/german_data.dart';
import 'languages/vietnamese_data.dart';
import 'languages/english_data.dart';

class LanguageData {
  // Static data structure with language codes as keys
  static final Map<String, List<Map<String, dynamic>>> _languageData = {
    'de': GermanData.getLanguageData(),
    'vi': VietnameseData.getLanguageData(),
    'en': EnglishData.getLanguageData(),
  };

  /// Dynamically loads flashcards for the given language code
  static List<Flashcard> getFlashcards(String languageCode) {
    final languageData = _languageData[languageCode];
    
    if (languageData == null) {
      throw ArgumentError('Language code "$languageCode" not supported');
    }

    return languageData.map((cardData) => _createFlashcard(cardData, languageCode)).toList();
  }

  /// Creates a flashcard with proper asset paths based on language code
  static Flashcard _createFlashcard(Map<String, dynamic> cardData, String languageCode) {
    final letter = cardData['letter'].toString().toLowerCase();
    
    return Flashcard(
      letter: cardData['letter'],
      imageUrl: 'assets/$languageCode/images/$letter.png',
      gifUrl: 'assets/$languageCode/gifs/$letter.gif',
      audioUrls: (cardData['audioFiles'] as List<String>)
          .map((file) => '$languageCode/audio/$file')
          .toList(),
      pronunciationAudioUrl: '$languageCode/audio/${cardData['pronunciationAudio']}',
      word: cardData['word'],
      pronunciation: cardData['pronunciation'],
    );
  }

  /// Get list of supported language codes
  static List<String> getSupportedLanguages() {
    return _languageData.keys.toList();
  }

  /// Check if a language code is supported
  static bool isLanguageSupported(String languageCode) {
    return _languageData.containsKey(languageCode);
  }

  /// Add a new language dynamically (for future extensibility)
  static void addLanguage(String languageCode, List<Map<String, dynamic>> data) {
    _languageData[languageCode] = data;
  }
} 