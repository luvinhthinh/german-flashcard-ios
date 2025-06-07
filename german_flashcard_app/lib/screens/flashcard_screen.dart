import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:gif_view/gif_view.dart';
import '../models/flashcard.dart';
import '../data/flashcard_data.dart';

class FlashcardScreen extends StatefulWidget {
  const FlashcardScreen({Key? key}) : super(key: key);

  @override
  _FlashcardScreenState createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  int _currentIndex = 0;
  bool _isShowingGif = false;
  late List<Flashcard> _flashcards;

  @override
  void initState() {
    super.initState();
    _flashcards = FlashcardData.getFlashcards();
  }

  void _playAudio() async {
    try {
      await _audioPlayer.play(AssetSource(_flashcards[_currentIndex].audioUrl));
    } catch (e) {
      print('Error playing audio: $e');
      // Show a snackbar or dialog to inform the user
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Audio file not found')),
        );
      }
    }
  }

  void _nextCard() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _flashcards.length;
      _isShowingGif = false;
    });
  }

  void _previousCard() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + _flashcards.length) % _flashcards.length;
      _isShowingGif = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final flashcard = _flashcards[_currentIndex];
    
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isShowingGif = !_isShowingGif;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        flashcard.letter,
                        style: const TextStyle(
                          fontSize: 120,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 20),
                      _isShowingGif
                          ? Container(
                              height: 200,
                              color: Colors.grey[200],
                              child: const Center(
                                child: Text('GIF not available'),
                              ),
                            )
                          : Container(
                              height: 200,
                              color: Colors.grey[200],
                              child: const Center(
                                child: Text('Image not available'),
                              ),
                            ),
                      const SizedBox(height: 20),
                      Text(
                        flashcard.word,
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        flashcard.pronunciation,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, size: 40),
                    onPressed: _previousCard,
                  ),
                  IconButton(
                    icon: const Icon(Icons.volume_up, size: 40),
                    onPressed: _playAudio,
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios, size: 40),
                    onPressed: _nextCard,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
} 