import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:gif_view/gif_view.dart';
import '../models/flashcard.dart';
import '../data/language_data.dart';

class FlashcardScreen extends StatefulWidget {
  final String language;
  
  const FlashcardScreen({Key? key, required this.language}) : super(key: key);

  @override
  _FlashcardScreenState createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  int _currentIndex = 0;
  bool _isShowingGif = false;
  int _currentAudioIndex = 0; // Track which audio to play for alternating
  late List<Flashcard> _flashcards;

  @override
  void initState() {
    super.initState();
    _flashcards = LanguageData.getFlashcards(widget.language);
  }

  void _playAudio({bool fromImageTap = false}) async {
    try {
      final flashcard = _flashcards[_currentIndex];
      
      if (fromImageTap) {
        // Alternate between the two sounds
        _currentAudioIndex = (_currentAudioIndex + 1) % flashcard.audioUrls.length;
      }
      
      final audioPath = flashcard.audioUrls[_currentAudioIndex];
      print('Playing audio: $audioPath');
      
      await _audioPlayer.play(AssetSource(audioPath));
    } catch (e) {
      print('Error playing audio: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error playing audio: $e')),
        );
      }
    }
  }

  void _playPronunciationAudio() async {
    try {
      final flashcard = _flashcards[_currentIndex];
      final audioPath = flashcard.pronunciationAudioUrl;
      print('Playing pronunciation audio: $audioPath');
      
      await _audioPlayer.play(AssetSource(audioPath));
    } catch (e) {
      print('Error playing pronunciation audio: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error playing pronunciation audio: $e')),
        );
      }
    }
  }

  void _nextCard() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _flashcards.length;
      _isShowingGif = false;
      _currentAudioIndex = 0; // Reset audio index for new card
    });
  }

  void _previousCard() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + _flashcards.length) % _flashcards.length;
      _isShowingGif = false;
      _currentAudioIndex = 0; // Reset audio index for new card
    });
  }

  Widget _buildImageWidget(Flashcard flashcard, double availableHeight) {
    // Get screen width and calculate responsive dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final maxImageWidth = screenWidth * 0.7; // 70% of screen width
    final maxImageHeight = availableHeight * 0.4; // 40% of available height
    
    // Use the smaller dimension to ensure it fits
    final imageWidth = maxImageWidth;
    final imageHeight = maxImageHeight;
    
    Widget imageWidget;
    
    if (_isShowingGif) {
      imageWidget = GifView.asset(
        flashcard.gifUrl,
        width: imageWidth,
        height: imageHeight,
        fit: BoxFit.contain, // Ensures image fits within bounds
        frameRate: 30,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: imageWidth,
            height: imageHeight,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: const Center(
              child: Text(
                'GIF not available',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          );
        },
      );
    } else {
      imageWidget = Image.asset(
        flashcard.imageUrl,
        width: imageWidth,
        height: imageHeight,
        fit: BoxFit.contain, // Ensures image fits within bounds
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: imageWidth,
            height: imageHeight,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: const Center(
              child: Text(
                'Image not available',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          );
        },
      );
    }

    return GestureDetector(
      onTap: () {
        // Toggle between image and GIF
        setState(() {
          _isShowingGif = !_isShowingGif;
        });
        // Play sound with alternating audio
        _playAudio(fromImageTap: true);
      },
      child: Container(
        width: imageWidth,
        height: imageHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: imageWidget,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final flashcard = _flashcards[_currentIndex];
    
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Main content
            Column(
                            children: [
                // Top bar with back button and page indicator
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Back button
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back, size: 24, color: Colors.blue),
                          onPressed: () => Navigator.pop(context),
                          tooltip: 'Back to language selection',
                        ),
                      ),
                      
                      // Page indicator
                      Text(
                        '${_currentIndex + 1} / ${_flashcards.length}',
                        style: const TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      
                      // Spacer to center the page indicator
                      const SizedBox(width: 48), // Same width as back button
                    ],
                  ),
                ),
                  
                  Expanded(
                    child: Container(
                      width: double.infinity, // Full width
                      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      padding: const EdgeInsets.all(20),
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
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          final availableHeight = constraints.maxHeight;
                          
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Flexible letter - takes up proportional space
                              Flexible(
                                flex: 2,
                                child: Center(
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      flashcard.letter,
                                      style: const TextStyle(
                                        fontSize: 120, // Reduced to fit better
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              
                              const SizedBox(height: 10),
                              
                              // Flexible image - takes up most space
                              Flexible(
                                flex: 4,
                                child: Center(
                                  child: _buildImageWidget(flashcard, availableHeight),
                                ),
                              ),
                              
                              const SizedBox(height: 10),
                              
                              // Flexible word and pronunciation
                              Flexible(
                                flex: 2,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        flashcard.word,
                                        style: const TextStyle(
                                          fontSize: 32, // Reduced to fit better
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    
                                    // Tappable pronunciation that plays sound
                                    GestureDetector(
                                      onTap: () => _playPronunciationAudio(),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                        decoration: BoxDecoration(
                                          color: Colors.blue[50],
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: Colors.blue[200]!),
                                        ),
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            flashcard.pronunciation,
                                            style: const TextStyle(
                                              fontSize: 20, // Reduced to fit better
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }
                      ),
                    ),
                  ),
                ],
              ),
              
              // Navigation arrows positioned at center of screen
              Positioned(
                left: 20,
                top: 0,
                bottom: 0,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios, size: 30, color: Colors.blue),
                      onPressed: _previousCard,
                    ),
                  ),
                ),
              ),
              
              Positioned(
                right: 20,
                top: 0,
                bottom: 0,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios, size: 30, color: Colors.blue),
                      onPressed: _nextCard,
                    ),
                  ),
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