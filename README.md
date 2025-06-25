# Multi-Language Alphabet Flashcard App

An interactive iPad application designed to help 3-4 year old children learn alphabets through engaging flashcards. The app supports multiple languages including German, English, and Vietnamese. Each flashcard features:
- A letter of the alphabet
- An associated picture
- An animated GIF
- Audio pronunciation

## Features

### Learning Modes
- **Learn Mode**: Interactive flashcards with audio pronunciation and visual cues
- **Play Mode**: Engaging guessing game with 10 random questions
- **Review Mode**: Comprehensive review of learned content

### Multi-Language Support
- **German**: Complete alphabet with German words and pronunciation
- **English**: English alphabet with English words and pronunciation  
- **Vietnamese**: Vietnamese alphabet with Vietnamese words and pronunciation

### Interactive Features
- Child-friendly interface optimized for iPad
- Interactive flashcards with touch gestures
- Audio pronunciation for each letter and word
- Animated illustrations and GIFs
- Progress tracking across different modes
- Dynamic button text based on selected mode
- Audio feedback for correct/incorrect answers in play mode

### Play Mode Game Features
- 10 random questions per session
- Multiple choice format with two options
- Visual cues (images) and audio cues (pronunciation)
- Immediate feedback with sound effects
- Manual progression with "Next" button
- Consistent option ordering for better UX

## Setup Instructions
1. Ensure you have Flutter installed on your system
2. Clone this repository
3. Navigate to the `german_flashcard_app` directory
4. Run `flutter pub get` to install dependencies
5. Run `flutter run` to start the application

## Requirements
- Flutter SDK (latest stable version)
- iOS 13.0 or later
- iPad device or simulator (optimized for iPad interface)

## Project Structure
```
german_flashcard_app/
├── lib/
│   ├── data/
│   │   └── languages/
│   │       ├── german_data.dart
│   │       ├── english_data.dart
│   │       └── vietnamese_data.dart
│   ├── models/
│   ├── screens/
│   └── main.dart
├── assets/
│   ├── de/ (German assets)
│   ├── en/ (English assets)
│   └── vi/ (Vietnamese assets)
└── pubspec.yaml
```

## Development Notes
- The app uses Flutter for cross-platform development
- Audio and image assets are organized by language codes
- Data files contain structured word lists with asset references
- Debug logging is implemented for troubleshooting asset loading
- The interface is specifically designed for iPad touch interaction