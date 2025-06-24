class EnglishData {
  static List<Map<String, dynamic>> getLanguageData() {
    return [
      {
        'letter': 'A',
        'word': 'Apple',
        'pronunciation': 'ap-ple',
        'audioFiles': ['a_soundeffect_en.mp3', 'a_longtext_en.mp3'],
        'pronunciationAudio': 'a_pronunciation_en.mp3',
      },
      {
        'letter': 'B',
        'word': 'Ball',
        'pronunciation': 'ball',
        'audioFiles': ['b_soundeffect_en.mp3', 'b_longtext_en.mp3'],
        'pronunciationAudio': 'b_pronunciation_en.mp3',
      },
      {
        'letter': 'C',
        'word': 'Cat',
        'pronunciation': 'cat',
        'audioFiles': ['c_soundeffect_en.mp3', 'c_longtext_en.mp3'],
        'pronunciationAudio': 'c_pronunciation_en.mp3',
      },
    ];
  }

  /// Get all available words (for game purposes)
  static List<Map<String, dynamic>> getAllWords() {
    return getLanguageData();
  }
} 