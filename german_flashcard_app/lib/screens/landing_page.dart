import 'package:flutter/material.dart';
import 'flashcard_screen.dart';
import 'play_page.dart';
import '../data/language_data.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String? selectedLanguage;
  String? selectedMode;

  // Language display information (can be moved to a config file later)
  final Map<String, Map<String, String>> languageDisplayInfo = {
    'de': {'name': 'Deutsch', 'flag': '🇩🇪'},
    'vi': {'name': 'Tiếng Việt', 'flag': '🇻🇳'},
    'en': {'name': 'English', 'flag': '🇺🇸'},
  };

  List<Map<String, String>> get languages {
    return LanguageData.getSupportedLanguages()
        .where((code) => languageDisplayInfo.containsKey(code))
        .map((code) => {
              'code': code,
              'name': languageDisplayInfo[code]!['name']!,
              'flag': languageDisplayInfo[code]!['flag']!,
            })
        .toList();
  }

  final List<Map<String, dynamic>> modes = [
    {'code': 'learn', 'name': 'Learn', 'icon': Icons.school, 'color': Colors.blue},
    {'code': 'play', 'name': 'Play', 'icon': Icons.games, 'color': Colors.green},
    {'code': 'review', 'name': 'Review', 'icon': Icons.quiz, 'color': Colors.orange},
  ];

  void _navigateToMode() {
    if (selectedLanguage == null || selectedMode == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select both language and mode'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    switch (selectedMode) {
      case 'learn':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FlashcardScreen(
              language: selectedLanguage!,
              useRandomizedContent: true,
            ),
          ),
        );
        break;
      case 'play':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlayPage(
              language: selectedLanguage!,
            ),
          ),
        );
        break;
      case 'review':
        _showComingSoon('Review Mode');
        break;
    }
  }

  void _showComingSoon(String modeName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(modeName),
          content: Text('$modeName is coming soon!'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  String _getButtonText() {
    switch (selectedMode) {
      case 'learn':
        return 'Start Learning';
      case 'play':
        return 'Start Playing';
      case 'review':
        return 'Start Reviewing';
      default:
        return 'Start Learning';
    }
  }

  Widget _buildLanguageCard(Map<String, String> language) {
    final isSelected = selectedLanguage == language['code'];
    
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedLanguage = language['code'];
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue[100] : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey[300]!,
            width: isSelected ? 2 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              language['flag']!,
              style: const TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 8),
            Text(
              language['name']!,
              style: TextStyle(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? Colors.blue : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildModeCard(Map<String, dynamic> mode) {
    final isSelected = selectedMode == mode['code'];
    final color = mode['color'] as Color;
    
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedMode = mode['code'];
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: isSelected ? color.withOpacity(0.1) : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? color : Colors.grey[300]!,
            width: isSelected ? 2 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              mode['icon'] as IconData,
              size: 48,
              color: isSelected ? color : Colors.grey[600],
            ),
            const SizedBox(height: 12),
            Text(
              mode['name']!,
              style: TextStyle(
                fontSize: 18,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? color : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              
              // App Title
              const Text(
                'Alphabet Learning',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Choose your language and learning mode',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              
              const SizedBox(height: 50),
              
              // Language Selection
              const Text(
                'Select Language',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: languages.map((language) => _buildLanguageCard(language)).toList(),
                ),
              ),
              
              const SizedBox(height: 50),
              
              // Mode Selection
              const Text(
                'Select Mode',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: modes.map((mode) => Expanded(child: _buildModeCard(mode))).toList(),
              ),
              
              const Spacer(),
              
              // Start Button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: _navigateToMode,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    _getButtonText(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
} 