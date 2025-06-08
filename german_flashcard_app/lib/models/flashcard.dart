class Flashcard {
  final String letter;
  final String imageUrl;
  final String gifUrl;
  final List<String> audioUrls; // For alternating sounds when tapping image
  final String pronunciationAudioUrl; // Dedicated audio for pronunciation
  final String word;
  final String pronunciation;

  Flashcard({
    required this.letter,
    required this.imageUrl,
    required this.gifUrl,
    required this.audioUrls,
    required this.pronunciationAudioUrl,
    required this.word,
    required this.pronunciation,
  });
} 