import 'dart:math';

class EnglishData {
  // Static data structure with multiple words per letter
  static final Map<String, List<Map<String, dynamic>>> _letterOptions = {
    'A': [
      {
        'word': 'Apple',
        'pronunciation': 'ap-ple',
        'imageFile': 'a_apple.png',
        'gifFile': 'a_apple.gif',
        'audioFiles': ['a_apple_soundeffect_en.mp3', 'a_apple_longtext_en.mp3'],
        'pronunciationAudio': 'a_apple_pronunciation_en.mp3',
      },
      {
        'word': 'Airplane',
        'pronunciation': 'air-plane',
        'imageFile': 'a_airplane.png',
        'gifFile': 'a_airplane.gif',
        'audioFiles': ['a_airplane_soundeffect_en.mp3', 'a_airplane_longtext_en.mp3'],
        'pronunciationAudio': 'a_airplane_pronunciation_en.mp3',
      },
      {
        'word': 'Ant',
        'pronunciation': 'ant',
        'imageFile': 'a_ant.png',
        'gifFile': 'a_ant.gif',
        'audioFiles': ['a_ant_soundeffect_en.mp3', 'a_ant_longtext_en.mp3'],
        'pronunciationAudio': 'a_ant_pronunciation_en.mp3',
      },
    ],
    'B': [
      {
        'word': 'Ball',
        'pronunciation': 'ball',
        'imageFile': 'b_ball.png',
        'gifFile': 'b_ball.gif',
        'audioFiles': ['b_ball_soundeffect_en.mp3', 'b_ball_longtext_en.mp3'],
        'pronunciationAudio': 'b_ball_pronunciation_en.mp3',
      },
      {
        'word': 'Book',
        'pronunciation': 'book',
        'imageFile': 'b_book.png',
        'gifFile': 'b_book.gif',
        'audioFiles': ['b_book_soundeffect_en.mp3', 'b_book_longtext_en.mp3'],
        'pronunciationAudio': 'b_book_pronunciation_en.mp3',
      },
      {
        'word': 'Bird',
        'pronunciation': 'bird',
        'imageFile': 'b_bird.png',
        'gifFile': 'b_bird.gif',
        'audioFiles': ['b_bird_soundeffect_en.mp3', 'b_bird_longtext_en.mp3'],
        'pronunciationAudio': 'b_bird_pronunciation_en.mp3',
      },
    ],
    'C': [
      {
        'word': 'Cat',
        'pronunciation': 'cat',
        'imageFile': 'c_cat.png',
        'gifFile': 'c_cat.gif',
        'audioFiles': ['c_cat_soundeffect_en.mp3', 'c_cat_longtext_en.mp3'],
        'pronunciationAudio': 'c_cat_pronunciation_en.mp3',
      },
      {
        'word': 'Car',
        'pronunciation': 'car',
        'imageFile': 'c_car.png',
        'gifFile': 'c_car.gif',
        'audioFiles': ['c_car_soundeffect_en.mp3', 'c_car_longtext_en.mp3'],
        'pronunciationAudio': 'c_car_pronunciation_en.mp3',
      },
      {
        'word': 'Cake',
        'pronunciation': 'cake',
        'imageFile': 'c_cake.png',
        'gifFile': 'c_cake.gif',
        'audioFiles': ['c_cake_soundeffect_en.mp3', 'c_cake_longtext_en.mp3'],
        'pronunciationAudio': 'c_cake_pronunciation_en.mp3',
      },
    ],
    'D': [
      {
        'word': 'Dog',
        'pronunciation': 'dog',
        'imageFile': 'd_dog.png',
        'gifFile': 'd_dog.gif',
        'audioFiles': ['d_dog_soundeffect_en.mp3', 'd_dog_longtext_en.mp3'],
        'pronunciationAudio': 'd_dog_pronunciation_en.mp3',
      },
      {
        'word': 'Duck',
        'pronunciation': 'duck',
        'imageFile': 'd_duck.png',
        'gifFile': 'd_duck.gif',
        'audioFiles': ['d_duck_soundeffect_en.mp3', 'd_duck_longtext_en.mp3'],
        'pronunciationAudio': 'd_duck_pronunciation_en.mp3',
      },
    ],
    'E': [
      {
        'word': 'Elephant',
        'pronunciation': 'el-e-phant',
        'imageFile': 'e_elephant.png',
        'gifFile': 'e_elephant.gif',
        'audioFiles': ['e_elephant_soundeffect_en.mp3', 'e_elephant_longtext_en.mp3'],
        'pronunciationAudio': 'e_elephant_pronunciation_en.mp3',
      },
      {
        'word': 'Egg',
        'pronunciation': 'egg',
        'imageFile': 'e_egg.png',
        'gifFile': 'e_egg.gif',
        'audioFiles': ['e_egg_soundeffect_en.mp3', 'e_egg_longtext_en.mp3'],
        'pronunciationAudio': 'e_egg_pronunciation_en.mp3',
      },
    ],
    'F': [
      {
        'word': 'Fish',
        'pronunciation': 'fish',
        'imageFile': 'f_fish.png',
        'gifFile': 'f_fish.gif',
        'audioFiles': ['f_fish_soundeffect_en.mp3', 'f_fish_longtext_en.mp3'],
        'pronunciationAudio': 'f_fish_pronunciation_en.mp3',
      },
      {
        'word': 'Flower',
        'pronunciation': 'flow-er',
        'imageFile': 'f_flower.png',
        'gifFile': 'f_flower.gif',
        'audioFiles': ['f_flower_soundeffect_en.mp3', 'f_flower_longtext_en.mp3'],
        'pronunciationAudio': 'f_flower_pronunciation_en.mp3',
      },
    ],
    'G': [
      {
        'word': 'Girl',
        'pronunciation': 'girl',
        'imageFile': 'g_girl.png',
        'gifFile': 'g_girl.gif',
        'audioFiles': ['g_girl_soundeffect_en.mp3', 'g_girl_longtext_en.mp3'],
        'pronunciationAudio': 'g_girl_pronunciation_en.mp3',
      },
      {
        'word': 'Goat',
        'pronunciation': 'goat',
        'imageFile': 'g_goat.png',
        'gifFile': 'g_goat.gif',
        'audioFiles': ['g_goat_soundeffect_en.mp3', 'g_goat_longtext_en.mp3'],
        'pronunciationAudio': 'g_goat_pronunciation_en.mp3',
      },
    ],
    'H': [
      {
        'word': 'House',
        'pronunciation': 'house',
        'imageFile': 'h_house.png',
        'gifFile': 'h_house.gif',
        'audioFiles': ['h_house_soundeffect_en.mp3', 'h_house_longtext_en.mp3'],
        'pronunciationAudio': 'h_house_pronunciation_en.mp3',
      },
      {
        'word': 'Hat',
        'pronunciation': 'hat',
        'imageFile': 'h_hat.png',
        'gifFile': 'h_hat.gif',
        'audioFiles': ['h_hat_soundeffect_en.mp3', 'h_hat_longtext_en.mp3'],
        'pronunciationAudio': 'h_hat_pronunciation_en.mp3',
      },
    ],
    'I': [
      {
        'word': 'Ice cream',
        'pronunciation': 'ice cream',
        'imageFile': 'i_icecream.png',
        'gifFile': 'i_icecream.gif',
        'audioFiles': ['i_icecream_soundeffect_en.mp3', 'i_icecream_longtext_en.mp3'],
        'pronunciationAudio': 'i_icecream_pronunciation_en.mp3',
      },
      {
        'word': 'Igloo',
        'pronunciation': 'ig-loo',
        'imageFile': 'i_igloo.png',
        'gifFile': 'i_igloo.gif',
        'audioFiles': ['i_igloo_soundeffect_en.mp3', 'i_igloo_longtext_en.mp3'],
        'pronunciationAudio': 'i_igloo_pronunciation_en.mp3',
      },
    ],
    'J': [
      {
        'word': 'Jump',
        'pronunciation': 'jump',
        'imageFile': 'j_jump.png',
        'gifFile': 'j_jump.gif',
        'audioFiles': ['j_jump_soundeffect_en.mp3', 'j_jump_longtext_en.mp3'],
        'pronunciationAudio': 'j_jump_pronunciation_en.mp3',
      },
      {
        'word': 'Jacket',
        'pronunciation': 'jack-et',
        'imageFile': 'j_jacket.png',
        'gifFile': 'j_jacket.gif',
        'audioFiles': ['j_jacket_soundeffect_en.mp3', 'j_jacket_longtext_en.mp3'],
        'pronunciationAudio': 'j_jacket_pronunciation_en.mp3',
      },
    ],
    'K': [
      {
        'word': 'King',
        'pronunciation': 'king',
        'imageFile': 'k_king.png',
        'gifFile': 'k_king.gif',
        'audioFiles': ['k_king_soundeffect_en.mp3', 'k_king_longtext_en.mp3'],
        'pronunciationAudio': 'k_king_pronunciation_en.mp3',
      },
      {
        'word': 'Kite',
        'pronunciation': 'kite',
        'imageFile': 'k_kite.png',
        'gifFile': 'k_kite.gif',
        'audioFiles': ['k_kite_soundeffect_en.mp3', 'k_kite_longtext_en.mp3'],
        'pronunciationAudio': 'k_kite_pronunciation_en.mp3',
      },
    ],
    'L': [
      {
        'word': 'Lion',
        'pronunciation': 'li-on',
        'imageFile': 'l_lion.png',
        'gifFile': 'l_lion.gif',
        'audioFiles': ['l_lion_soundeffect_en.mp3', 'l_lion_longtext_en.mp3'],
        'pronunciationAudio': 'l_lion_pronunciation_en.mp3',
      },
      {
        'word': 'Leaf',
        'pronunciation': 'leaf',
        'imageFile': 'l_leaf.png',
        'gifFile': 'l_leaf.gif',
        'audioFiles': ['l_leaf_soundeffect_en.mp3', 'l_leaf_longtext_en.mp3'],
        'pronunciationAudio': 'l_leaf_pronunciation_en.mp3',
      },
    ],
    'M': [
      {
        'word': 'Moon',
        'pronunciation': 'moon',
        'imageFile': 'm_moon.png',
        'gifFile': 'm_moon.gif',
        'audioFiles': ['m_moon_soundeffect_en.mp3', 'm_moon_longtext_en.mp3'],
        'pronunciationAudio': 'm_moon_pronunciation_en.mp3',
      },
      {
        'word': 'Mouse',
        'pronunciation': 'mouse',
        'imageFile': 'm_mouse.png',
        'gifFile': 'm_mouse.gif',
        'audioFiles': ['m_mouse_soundeffect_en.mp3', 'm_mouse_longtext_en.mp3'],
        'pronunciationAudio': 'm_mouse_pronunciation_en.mp3',
      },
    ],
    'N': [
      {
        'word': 'Night',
        'pronunciation': 'night',
        'imageFile': 'n_night.png',
        'gifFile': 'n_night.gif',
        'audioFiles': ['n_night_soundeffect_en.mp3', 'n_night_longtext_en.mp3'],
        'pronunciationAudio': 'n_night_pronunciation_en.mp3',
      },
      {
        'word': 'Nest',
        'pronunciation': 'nest',
        'imageFile': 'n_nest.png',
        'gifFile': 'n_nest.gif',
        'audioFiles': ['n_nest_soundeffect_en.mp3', 'n_nest_longtext_en.mp3'],
        'pronunciationAudio': 'n_nest_pronunciation_en.mp3',
      },
    ],
    'O': [
      {
        'word': 'Orange',
        'pronunciation': 'or-ange',
        'imageFile': 'o_orange.png',
        'gifFile': 'o_orange.gif',
        'audioFiles': ['o_orange_soundeffect_en.mp3', 'o_orange_longtext_en.mp3'],
        'pronunciationAudio': 'o_orange_pronunciation_en.mp3',
      },
      {
        'word': 'Owl',
        'pronunciation': 'owl',
        'imageFile': 'o_owl.png',
        'gifFile': 'o_owl.gif',
        'audioFiles': ['o_owl_soundeffect_en.mp3', 'o_owl_longtext_en.mp3'],
        'pronunciationAudio': 'o_owl_pronunciation_en.mp3',
      },
    ],
    'P': [
      {
        'word': 'Pig',
        'pronunciation': 'pig',
        'imageFile': 'p_pig.png',
        'gifFile': 'p_pig.gif',
        'audioFiles': ['p_pig_soundeffect_en.mp3', 'p_pig_longtext_en.mp3'],
        'pronunciationAudio': 'p_pig_pronunciation_en.mp3',
      },
      {
        'word': 'Pencil',
        'pronunciation': 'pen-cil',
        'imageFile': 'p_pencil.png',
        'gifFile': 'p_pencil.gif',
        'audioFiles': ['p_pencil_soundeffect_en.mp3', 'p_pencil_longtext_en.mp3'],
        'pronunciationAudio': 'p_pencil_pronunciation_en.mp3',
      },
    ],
    'Q': [
      {
        'word': 'Queen',
        'pronunciation': 'queen',
        'imageFile': 'q_queen.png',
        'gifFile': 'q_queen.gif',
        'audioFiles': ['q_queen_soundeffect_en.mp3', 'q_queen_longtext_en.mp3'],
        'pronunciationAudio': 'q_queen_pronunciation_en.mp3',
      },
    ],
    'R': [
      {
        'word': 'Rainbow',
        'pronunciation': 'rain-bow',
        'imageFile': 'r_rainbow.png',
        'gifFile': 'r_rainbow.gif',
        'audioFiles': ['r_rainbow_soundeffect_en.mp3', 'r_rainbow_longtext_en.mp3'],
        'pronunciationAudio': 'r_rainbow_pronunciation_en.mp3',
      },
      {
        'word': 'Rabbit',
        'pronunciation': 'rab-bit',
        'imageFile': 'r_rabbit.png',
        'gifFile': 'r_rabbit.gif',
        'audioFiles': ['r_rabbit_soundeffect_en.mp3', 'r_rabbit_longtext_en.mp3'],
        'pronunciationAudio': 'r_rabbit_pronunciation_en.mp3',
      },
    ],
    'S': [
      {
        'word': 'Sun',
        'pronunciation': 'sun',
        'imageFile': 's_sun.png',
        'gifFile': 's_sun.gif',
        'audioFiles': ['s_sun_soundeffect_en.mp3', 's_sun_longtext_en.mp3'],
        'pronunciationAudio': 's_sun_pronunciation_en.mp3',
      },
      {
        'word': 'Star',
        'pronunciation': 'star',
        'imageFile': 's_star.png',
        'gifFile': 's_star.gif',
        'audioFiles': ['s_star_soundeffect_en.mp3', 's_star_longtext_en.mp3'],
        'pronunciationAudio': 's_star_pronunciation_en.mp3',
      },
    ],
    'T': [
      {
        'word': 'Tree',
        'pronunciation': 'tree',
        'imageFile': 't_tree.png',
        'gifFile': 't_tree.gif',
        'audioFiles': ['t_tree_soundeffect_en.mp3', 't_tree_longtext_en.mp3'],
        'pronunciationAudio': 't_tree_pronunciation_en.mp3',
      },
      {
        'word': 'Tiger',
        'pronunciation': 'ti-ger',
        'imageFile': 't_tiger.png',
        'gifFile': 't_tiger.gif',
        'audioFiles': ['t_tiger_soundeffect_en.mp3', 't_tiger_longtext_en.mp3'],
        'pronunciationAudio': 't_tiger_pronunciation_en.mp3',
      },
    ],
    'U': [
      {
        'word': 'Umbrella',
        'pronunciation': 'um-brel-la',
        'imageFile': 'u_umbrella.png',
        'gifFile': 'u_umbrella.gif',
        'audioFiles': ['u_umbrella_soundeffect_en.mp3', 'u_umbrella_longtext_en.mp3'],
        'pronunciationAudio': 'u_umbrella_pronunciation_en.mp3',
      },
    ],
    'V': [
      {
        'word': 'Violin',
        'pronunciation': 'vi-o-lin',
        'imageFile': 'v_violin.png',
        'gifFile': 'v_violin.gif',
        'audioFiles': ['v_violin_soundeffect_en.mp3', 'v_violin_longtext_en.mp3'],
        'pronunciationAudio': 'v_violin_pronunciation_en.mp3',
      },
    ],
    'W': [
      {
        'word': 'Water',
        'pronunciation': 'wa-ter',
        'imageFile': 'w_water.png',
        'gifFile': 'w_water.gif',
        'audioFiles': ['w_water_soundeffect_en.mp3', 'w_water_longtext_en.mp3'],
        'pronunciationAudio': 'w_water_pronunciation_en.mp3',
      },
      {
        'word': 'Window',
        'pronunciation': 'win-dow',
        'imageFile': 'w_window.png',
        'gifFile': 'w_window.gif',
        'audioFiles': ['w_window_soundeffect_en.mp3', 'w_window_longtext_en.mp3'],
        'pronunciationAudio': 'w_window_pronunciation_en.mp3',
      },
    ],
    'X': [
      {
        'word': 'Xylophone',
        'pronunciation': 'xy-lo-phone',
        'imageFile': 'x_xylophone.png',
        'gifFile': 'x_xylophone.gif',
        'audioFiles': ['x_xylophone_soundeffect_en.mp3', 'x_xylophone_longtext_en.mp3'],
        'pronunciationAudio': 'x_xylophone_pronunciation_en.mp3',
      },
    ],
    'Y': [
      {
        'word': 'Yellow',
        'pronunciation': 'yel-low',
        'imageFile': 'y_yellow.png',
        'gifFile': 'y_yellow.gif',
        'audioFiles': ['y_yellow_soundeffect_en.mp3', 'y_yellow_longtext_en.mp3'],
        'pronunciationAudio': 'y_yellow_pronunciation_en.mp3',
      },
    ],
    'Z': [
      {
        'word': 'Zebra',
        'pronunciation': 'ze-bra',
        'imageFile': 'z_zebra.png',
        'gifFile': 'z_zebra.gif',
        'audioFiles': ['z_zebra_soundeffect_en.mp3', 'z_zebra_longtext_en.mp3'],
        'pronunciationAudio': 'z_zebra_pronunciation_en.mp3',
      },
      {
        'word': 'Zoo',
        'pronunciation': 'zoo',
        'imageFile': 'z_zoo.png',
        'gifFile': 'z_zoo.gif',
        'audioFiles': ['z_zoo_soundeffect_en.mp3', 'z_zoo_longtext_en.mp3'],
        'pronunciationAudio': 'z_zoo_pronunciation_en.mp3',
      },
    ],
  };

  /// Get language data with randomly selected words for each letter
  static List<Map<String, dynamic>> getLanguageData() {
    return getRandomizedLanguageData();
  }

  /// Generate randomized language data by selecting one word per letter
  static List<Map<String, dynamic>> getRandomizedLanguageData() {
    final random = Random();
    
    return _letterOptions.entries.map((entry) {
      final letter = entry.key;
      final wordOptions = entry.value;
      
      // Randomly select one word from the available options
      final selectedWord = wordOptions[random.nextInt(wordOptions.length)];
      
      return {
        'letter': letter,
        ...selectedWord,
      };
    }).toList();
  }

  /// Get all available words for a specific letter (for future features)
  static List<Map<String, dynamic>> getWordsForLetter(String letter) {
    return _letterOptions[letter.toUpperCase()] ?? [];
  }

  /// Get count of available words for each letter
  static Map<String, int> getWordCounts() {
    return _letterOptions.map((letter, words) => MapEntry(letter, words.length));
  }

  /// Get all available words from all letters (for game purposes)
  static List<Map<String, dynamic>> getAllWords() {
    List<Map<String, dynamic>> allWords = [];
    
    _letterOptions.forEach((letter, wordOptions) {
      for (var wordData in wordOptions) {
        allWords.add({
          'letter': letter,
          ...wordData,
        });
      }
    });
    
    return allWords;
  }
} 