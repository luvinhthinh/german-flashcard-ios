import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../data/language_data.dart';

class PlayPage extends StatefulWidget {
  final String language;
  
  const PlayPage({Key? key, required this.language}) : super(key: key);

  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  int _currentQuestionIndex = 0;
  int _score = 0;
  bool _isAnswered = false;
  bool _isCorrect = false;
  late List<GameQuestion> _questions;
  late List<Map<String, dynamic>> _allLanguageData;

  @override
  void initState() {
    super.initState();
    _initializeGame();
  }

  void _initializeGame() {
    print('Initializing game for language: ${widget.language}');
    
    // Step 1: Fetch the right data file from lib/data/languages depending on the language selected
    _allLanguageData = LanguageData.getAllWordsForLanguage(widget.language);
    print('Loaded ${_allLanguageData.length} words for ${widget.language}');
    
    // Step 2: Get the list of 10 random objects (does not depend on the letter)
    _questions = _generateQuestions();
    print('Generated ${_questions.length} questions for ${widget.language}');
  }

  List<GameQuestion> _generateQuestions() {
    List<GameQuestion> questions = [];
    List<Map<String, dynamic>> availableData = List.from(_allLanguageData);
    
    // Shuffle to get random objects
    availableData.shuffle();
    
    for (int i = 0; i < 10 && availableData.isNotEmpty; i++) {
      // Step 3: From the 10 random objects, extract word, imageFile, pronunciation and pronunciationAudio. This will be the Correct option
      Map<String, dynamic> correctData = availableData.removeAt(0);
      
      // Step 4: From the data in step 1, random select 10 object that are different from step 3. This will be the Incorrect option
      Map<String, dynamic> incorrectData = _getDifferentWord(correctData, availableData);
      
      print('Question ${i + 1}: Correct=${correctData['word']}, Wrong=${incorrectData['word']}');
      
      // Create options and shuffle them once, then store the order
      List<Map<String, dynamic>> options = [correctData, incorrectData];
      options.shuffle();
      
      print('Options after shuffle: ${options.map((o) => o['word']).toList()}');
      
      // Randomly choose between image and pronunciation as cue
      bool useImageAsCue = (i % 2 == 0); // Alternate between image and pronunciation
      
      questions.add(GameQuestion(
        cue: useImageAsCue ? CueType.image : CueType.pronunciation,
        correctAnswer: correctData,
        wrongAnswer: incorrectData,
        languageCode: widget.language,
        options: options, // Store the shuffled options
      ));
    }
    
    return questions;
  }

  Map<String, dynamic> _getDifferentWord(Map<String, dynamic> correctData, List<Map<String, dynamic>> availableData) {
    // Try to find a word with a different letter
    for (Map<String, dynamic> wordData in availableData) {
      if (wordData['letter'] != correctData['letter']) {
        return wordData;
      }
    }
    
    // If no different letter found, use the first available word
    return availableData.isNotEmpty ? availableData.first : correctData;
  }

  void _playCorrectSound() async {
    try {
      // Play encouraging sound - use language-specific audio
      String audioPath = '${widget.language}/audio/a_apfel_soundeffect_${widget.language}.mp3';
      await _audioPlayer.play(AssetSource(audioPath));
    } catch (e) {
      print('Error playing correct sound: $e');
    }
  }

  void _playIncorrectSound() async {
    try {
      // Play try again sound - use language-specific audio
      String audioPath = '${widget.language}/audio/b_banane_soundeffect_${widget.language}.mp3';
      await _audioPlayer.play(AssetSource(audioPath));
    } catch (e) {
      print('Error playing incorrect sound: $e');
    }
  }

  void _answerQuestion(bool isCorrectAnswer) {
    if (_isAnswered) return;

    setState(() {
      _isAnswered = true;
      _isCorrect = isCorrectAnswer;
      if (isCorrectAnswer) {
        _score++;
        _playCorrectSound();
      } else {
        _playIncorrectSound();
      }
    });

    // Remove automatic transition - user will click Next button
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
        _isAnswered = false;
        _isCorrect = false;
      });
    } else {
      _showGameResults();
    }
  }

  void _showGameResults() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Game Complete!'),
          content: Text('Your score: $_score out of ${_questions.length}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop(); // Go back to landing page
              },
              child: const Text('Back to Menu'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _restartGame();
              },
              child: const Text('Play Again'),
            ),
          ],
        );
      },
    );
  }

  void _restartGame() {
    setState(() {
      _currentQuestionIndex = 0;
      _score = 0;
      _isAnswered = false;
      _isCorrect = false;
      _questions = _generateQuestions();
    });
  }

  Widget _buildCue(GameQuestion question) {
    if (question.cue == CueType.image) {
      String imagePath = 'assets/${question.languageCode}/images/${question.correctAnswer['imageFile']}';
      return Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              print('Error loading image: $imagePath - $error');
              return Container(
                color: Colors.grey[200],
                child: const Center(
                  child: Text('Image not available'),
                ),
              );
            },
          ),
        ),
      );
    } else {
      String audioPath = '${question.languageCode}/audio/${question.correctAnswer['pronunciationAudio']}';
      return GestureDetector(
        onTap: () async {
          try {
            await _audioPlayer.play(AssetSource(audioPath));
          } catch (e) {
            print('Error playing pronunciation: $e');
          }
        },
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blue[200]!),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.volume_up,
                size: 64,
                color: Colors.blue,
              ),
              SizedBox(height: 16),
              Text(
                'Tap to hear pronunciation',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  Widget _buildAnswerOption(Map<String, dynamic> wordData, bool isCorrect) {
    print('Building option: ${wordData['word']}, isCorrect: $isCorrect');
    
    final isSelected = _isAnswered && isCorrect == _isCorrect;
    final isWrong = _isAnswered && !isCorrect && !_isCorrect;
    
    Color backgroundColor = Colors.white;
    Color borderColor = Colors.grey[300]!;
    
    if (_isAnswered) {
      if (isCorrect) {
        backgroundColor = Colors.green[50]!;
        borderColor = Colors.green;
      } else if (isWrong) {
        backgroundColor = Colors.red[50]!;
        borderColor = Colors.red;
      }
    }

    return GestureDetector(
      onTap: () => _answerQuestion(isCorrect),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  wordData['letter'],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    wordData['word'],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    wordData['pronunciation'],
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            if (_isAnswered)
              Icon(
                isCorrect ? Icons.check_circle : Icons.cancel,
                color: isCorrect ? Colors.green : Colors.red,
                size: 24,
              ),
          ],
        ),
      ),
    );
  }

  String _getLanguageName() {
    switch (widget.language) {
      case 'de':
        return 'Deutsch';
      case 'vi':
        return 'Tiếng Việt';
      case 'en':
        return 'English';
      default:
        return widget.language.toUpperCase();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_questions.isEmpty) {
      return const Scaffold(
        body: Center(
          child: Text('No questions available'),
        ),
      );
    }

    final currentQuestion = _questions[_currentQuestionIndex];
    final options = currentQuestion.options;
    
    print('Current question ${_currentQuestionIndex + 1}:');
    print('  Cue type: ${currentQuestion.cue}');
    print('  Correct answer: ${currentQuestion.correctAnswer['word']}');
    print('  Wrong answer: ${currentQuestion.wrongAnswer['word']}');
    print('  Options: ${options.map((o) => o['word']).toList()}');

    return Scaffold(
      appBar: AppBar(
        title: Text('Guessing Game - ${_getLanguageName()}'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Progress and Score
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Question ${_currentQuestionIndex + 1}/10',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Score: $_score',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 20),
              
              // Cue Section
              Text(
                currentQuestion.cue == CueType.image ? 'Look at the image:' : 'Listen to the pronunciation:',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Cue Display
              _buildCue(currentQuestion),
              
              const SizedBox(height: 30),
              
              // Question
              const Text(
                'Which word matches the cue?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Answer Options
              Expanded(
                child: Column(
                  children: options.map((wordData) {
                    bool isCorrect = wordData == currentQuestion.correctAnswer;
                    print('Option: ${wordData['word']}, isCorrect: $isCorrect, correctAnswer: ${currentQuestion.correctAnswer['word']}');
                    return _buildAnswerOption(wordData, isCorrect);
                  }).toList(),
                ),
              ),
              
              // Feedback Message and Next Button
              if (_isAnswered) ...[
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: _isCorrect ? Colors.green[50] : Colors.red[50],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: _isCorrect ? Colors.green : Colors.red,
                    ),
                  ),
                  child: Text(
                    _isCorrect ? 'Bravo! Correct!' : 'Try again!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: _isCorrect ? Colors.green : Colors.red,
                    ),
                  ),
                ),
                
                const SizedBox(height: 20),
                
                // Next Button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: _nextQuestion,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      _currentQuestionIndex < _questions.length - 1 ? 'Next Question' : 'See Results',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ),
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

enum CueType { image, pronunciation }

class GameQuestion {
  final CueType cue;
  final Map<String, dynamic> correctAnswer;
  final Map<String, dynamic> wrongAnswer;
  final String languageCode;
  final List<Map<String, dynamic>> options;

  GameQuestion({
    required this.cue,
    required this.correctAnswer,
    required this.wrongAnswer,
    required this.languageCode,
    required this.options,
  });
} 