import 'dart:math';

class GermanData {
  // Static data structure with multiple words per letter
  static final Map<String, List<Map<String, dynamic>>> _letterOptions = {
    'A': [
      {
        'word': 'Apfel',
        'pronunciation': 'ah-pfel',
        'imageFile': 'a_apfel.png',
        'gifFile': 'a_apfel.gif',
        'audioFiles': ['a_apfel_soundeffect_de.mp3', 'a_apfel_longtext_de.mp3'],
        'pronunciationAudio': 'a_apfel_pronunciation_de.mp3',
      },
      {
        'word': 'Auto',
        'pronunciation': 'ow-to',
        'imageFile': 'a_auto.png',
        'gifFile': 'a_auto.gif',
        'audioFiles': ['a_auto_soundeffect_de.mp3', 'a_auto_longtext_de.mp3'],
        'pronunciationAudio': 'a_auto_pronunciation_de.mp3',
      },
      {
        'word': 'Affe',
        'pronunciation': 'ah-fe',
        'imageFile': 'a_affe.png',
        'gifFile': 'a_affe.gif',
        'audioFiles': ['a_affe_soundeffect_de.mp3', 'a_affe_longtext_de.mp3'],
        'pronunciationAudio': 'a_affe_pronunciation_de.mp3',
      },
    ],
    'B': [
      {
        'word': 'Banane',
        'pronunciation': 'ban-ah-ne',
        'imageFile': 'b_banane.png',
        'gifFile': 'b_banane.gif',
        'audioFiles': ['b_banane_soundeffect_de.mp3', 'b_banane_longtext_de.mp3'],
        'pronunciationAudio': 'b_banane_pronunciation_de.mp3',
      },
      {
        'word': 'Ball',
        'pronunciation': 'bah-l',
        'imageFile': 'b_ball.png',
        'gifFile': 'b_ball.gif',
        'audioFiles': ['b_ball_soundeffect_de.mp3', 'b_ball_longtext_de.mp3'],
        'pronunciationAudio': 'b_ball_pronunciation_de.mp3',
      },
      {
        'word': 'Bär',
        'pronunciation': 'bair',
        'imageFile': 'b_baer.png',
        'gifFile': 'b_baer.gif',
        'audioFiles': ['b_baer_soundeffect_de.mp3', 'b_baer_longtext_de.mp3'],
        'pronunciationAudio': 'b_baer_pronunciation_de.mp3',
      },
      {
        'word': 'Buch',
        'pronunciation': 'bookh',
        'imageFile': 'b_buch.png',
        'gifFile': 'b_buch.gif',
        'audioFiles': ['b_buch_soundeffect_de.mp3', 'b_buch_longtext_de.mp3'],
        'pronunciationAudio': 'b_buch_pronunciation_de.mp3',
      },
    ],
    'C': [
      {
        'word': 'Computer',
        'pronunciation': 'kom-pyu-ter',
        'imageFile': 'c_computer.png',
        'gifFile': 'c_computer.gif',
        'audioFiles': ['c_computer_soundeffect_de.mp3', 'c_computer_longtext_de.mp3'],
        'pronunciationAudio': 'c_computer_pronunciation_de.mp3',
      },
      {
        'word': 'Clown',
        'pronunciation': 'klown',
        'imageFile': 'c_clown.png',
        'gifFile': 'c_clown.gif',
        'audioFiles': ['c_clown_soundeffect_de.mp3', 'c_clown_longtext_de.mp3'],
        'pronunciationAudio': 'c_clown_pronunciation_de.mp3',
      },
    ],
    'D': [
      {
        'word': 'Dinosaurier',
        'pronunciation': 'dee-no-zow-ree-er',
        'imageFile': 'd_dinosaurier.png',
        'gifFile': 'd_dinosaurier.gif',
        'audioFiles': ['d_soundeffect_de.wav', 'd_longtext_de.mp3'],
        'pronunciationAudio': 'd_dinosaurier_pronunciation_de.mp3',
      },
      {
        'word': 'Drache',
        'pronunciation': 'drah-khe',
        'imageFile': 'd_drache.png',
        'gifFile': 'd_drache.gif',
        'audioFiles': ['d_drache_soundeffect_de.mp3', 'd_drache_longtext_de.mp3'],
        'pronunciationAudio': 'd_drache_pronunciation_de.mp3',
      },
      {
        'word': 'Delfin',
        'pronunciation': 'del-feen',
        'imageFile': 'd_delfin.png',
        'gifFile': 'd_delfin.gif',
        'audioFiles': ['d_delfin_soundeffect_de.mp3', 'd_delfin_longtext_de.mp3'],
        'pronunciationAudio': 'd_delfin_pronunciation_de.mp3',
      },
    ],
    'E': [
      {
        'word': 'Elefant',
        'pronunciation': 'eh-le-fahnt',
        'imageFile': 'e_elefant.png',
        'gifFile': 'e_elefant.gif',
        'audioFiles': ['e_soundeffect_de.mp3', 'e_longtext_de.mp3'],
        'pronunciationAudio': 'e_pronunciation_de.mp3',
      },
      {
        'word': 'Eule',
        'pronunciation': 'oy-le',
        'imageFile': 'e_eule.png',
        'gifFile': 'e_eule.gif',
        'audioFiles': ['e_eule_soundeffect_de.mp3', 'e_eule_longtext_de.mp3'],
        'pronunciationAudio': 'e_eule_pronunciation_de.mp3',
      },
      {
        'word': 'Ente',
        'pronunciation': 'en-te',
        'imageFile': 'e_ente.png',
        'gifFile': 'e_ente.gif',
        'audioFiles': ['e_ente_soundeffect_de.mp3', 'e_ente_longtext_de.mp3'],
        'pronunciationAudio': 'e_ente_pronunciation_de.mp3',
      },
    ],
    'F': [
      {
        'word': 'Fisch',
        'pronunciation': 'fish',
        'imageFile': 'f_fisch.png',
        'gifFile': 'f_fisch.gif',
        'audioFiles': ['f_soundeffect_de.mp3', 'f_longtext_de.mp3'],
        'pronunciationAudio': 'f_pronunciation_de.mp3',
      },
      {
        'word': 'Frosch',
        'pronunciation': 'frosh',
        'imageFile': 'f_frosch.png',
        'gifFile': 'f_frosch.gif',
        'audioFiles': ['f_frosch_soundeffect_de.mp3', 'f_frosch_longtext_de.mp3'],
        'pronunciationAudio': 'f_frosch_pronunciation_de.mp3',
      },
      {
        'word': 'Fuchs',
        'pronunciation': 'fookhs',
        'imageFile': 'f_fuchs.png',
        'gifFile': 'f_fuchs.gif',
        'audioFiles': ['f_fuchs_soundeffect_de.mp3', 'f_fuchs_longtext_de.mp3'],
        'pronunciationAudio': 'f_fuchs_pronunciation_de.mp3',
      },
    ],
    'G': [
      {
        'word': 'Giraffe',
        'pronunciation': 'gi-rah-fe',
        'imageFile': 'g_giraffe.png',
        'gifFile': 'g_giraffe.gif',
        'audioFiles': ['g_soundeffect_de.mp3', 'g_longtext_de.mp3'],
        'pronunciationAudio': 'g_pronunciation_de.mp3',
      },
      {
        'word': 'Gans',
        'pronunciation': 'gahns',
        'imageFile': 'g_gans.png',
        'gifFile': 'g_gans.gif',
        'audioFiles': ['g_gans_soundeffect_de.mp3', 'g_gans_longtext_de.mp3'],
        'pronunciationAudio': 'g_gans_pronunciation_de.mp3',
      },
      {
        'word': 'Grille',
        'pronunciation': 'gril-le',
        'imageFile': 'g_grille.png',
        'gifFile': 'g_grille.gif',
        'audioFiles': ['g_grille_soundeffect_de.mp3', 'g_grille_longtext_de.mp3'],
        'pronunciationAudio': 'g_grille_pronunciation_de.mp3',
      },
    ],
    'H': [
      {
        'word': 'Haus',
        'pronunciation': 'hows',
        'imageFile': 'h_haus.png',
        'gifFile': 'h_haus.gif',
        'audioFiles': ['h_soundeffect_de.mp3', 'h_longtext_de.mp3'],
        'pronunciationAudio': 'h_pronunciation_de.mp3',
      },
      {
        'word': 'Hund',
        'pronunciation': 'hoont',
        'imageFile': 'h_hund.png',
        'gifFile': 'h_hund.gif',
        'audioFiles': ['h_hund_soundeffect_de.mp3', 'h_hund_longtext_de.mp3'],
        'pronunciationAudio': 'h_hund_pronunciation_de.mp3',
      },
      {
        'word': 'Hase',
        'pronunciation': 'hah-ze',
        'imageFile': 'h_hase.png',
        'gifFile': 'h_hase.gif',
        'audioFiles': ['h_hase_soundeffect_de.mp3', 'h_hase_longtext_de.mp3'],
        'pronunciationAudio': 'h_hase_pronunciation_de.mp3',
      },
    ],
    'I': [
      {
        'word': 'Igel',
        'pronunciation': 'ee-gel',
        'imageFile': 'i_igel.png',
        'gifFile': 'i_igel.gif',
        'audioFiles': ['i_soundeffect_de.mp3', 'i_longtext_de.mp3'],
        'pronunciationAudio': 'i_pronunciation_de.mp3',
      },
      {
        'word': 'Insel',
        'pronunciation': 'in-zel',
        'imageFile': 'i_insel.png',
        'gifFile': 'i_insel.gif',
        'audioFiles': ['i_insel_soundeffect_de.mp3', 'i_insel_longtext_de.mp3'],
        'pronunciationAudio': 'i_insel_pronunciation_de.mp3',
      },
    ],
    'J': [
      {
        'word': 'Jacke',
        'pronunciation': 'yah-ke',
        'imageFile': 'j_jacke.png',
        'gifFile': 'j_jacke.gif',
        'audioFiles': ['j_soundeffect_de.mp3', 'j_longtext_de.mp3'],
        'pronunciationAudio': 'j_pronunciation_de.mp3',
      },
      {
        'word': 'Junge',
        'pronunciation': 'yoong-e',
        'imageFile': 'j_junge.png',
        'gifFile': 'j_junge.gif',
        'audioFiles': ['j_junge_soundeffect_de.mp3', 'j_junge_longtext_de.mp3'],
        'pronunciationAudio': 'j_junge_pronunciation_de.mp3',
      },
    ],
    'K': [
      {
        'word': 'Katze',
        'pronunciation': 'kaht-se',
        'imageFile': 'k_katze.png',
        'gifFile': 'k_katze.gif',
        'audioFiles': ['k_soundeffect_de.mp3', 'k_longtext_de.mp3'],
        'pronunciationAudio': 'k_pronunciation_de.mp3',
      },
      {
        'word': 'Kuh',
        'pronunciation': 'koo',
        'imageFile': 'k_kuh.png',
        'gifFile': 'k_kuh.gif',
        'audioFiles': ['k_kuh_soundeffect_de.mp3', 'k_kuh_longtext_de.mp3'],
        'pronunciationAudio': 'k_kuh_pronunciation_de.mp3',
      },
      {
        'word': 'Käfer',
        'pronunciation': 'kai-fer',
        'imageFile': 'k_kaefer.png',
        'gifFile': 'k_kaefer.gif',
        'audioFiles': ['k_kaefer_soundeffect_de.mp3', 'k_kaefer_longtext_de.mp3'],
        'pronunciationAudio': 'k_kaefer_pronunciation_de.mp3',
      },
    ],
    'L': [
      {
        'word': 'Löwe',
        'pronunciation': 'lö-ve',
        'imageFile': 'l_loewe.png',
        'gifFile': 'l_loewe.gif',
        'audioFiles': ['l_soundeffect_de.mp3', 'l_longtext_de.mp3'],
        'pronunciationAudio': 'l_pronunciation_de.mp3',
      },
      {
        'word': 'Lamm',
        'pronunciation': 'lahm',
        'imageFile': 'l_lamm.png',
        'gifFile': 'l_lamm.gif',
        'audioFiles': ['l_lamm_soundeffect_de.mp3', 'l_lamm_longtext_de.mp3'],
        'pronunciationAudio': 'l_lamm_pronunciation_de.mp3',
      },
      {
        'word': 'Libelle',
        'pronunciation': 'li-bel-le',
        'imageFile': 'l_libelle.png',
        'gifFile': 'l_libelle.gif',
        'audioFiles': ['l_libelle_soundeffect_de.mp3', 'l_libelle_longtext_de.mp3'],
        'pronunciationAudio': 'l_libelle_pronunciation_de.mp3',
      },
    ],
    'M': [
      {
        'word': 'Maus',
        'pronunciation': 'mows',
        'imageFile': 'm_maus.png',
        'gifFile': 'm_maus.gif',
        'audioFiles': ['m_soundeffect_de.mp3', 'm_longtext_de.mp3'],
        'pronunciationAudio': 'm_pronunciation_de.mp3',
      },
      {
        'word': 'Marienkäfer',
        'pronunciation': 'mah-ree-en-kai-fer',
        'imageFile': 'm_marienkaefer.png',
        'gifFile': 'm_marienkaefer.gif',
        'audioFiles': ['m_marienkaefer_soundeffect_de.mp3', 'm_marienkaefer_longtext_de.mp3'],
        'pronunciationAudio': 'm_marienkaefer_pronunciation_de.mp3',
      },
      {
        'word': 'Mond',
        'pronunciation': 'mont',
        'imageFile': 'm_mond.png',
        'gifFile': 'm_mond.gif',
        'audioFiles': ['m_mond_soundeffect_de.mp3', 'm_mond_longtext_de.mp3'],
        'pronunciationAudio': 'm_mond_pronunciation_de.mp3',
      },
    ],
    'N': [
      {
        'word': 'Nase',
        'pronunciation': 'nah-ze',
        'imageFile': 'n_nase.png',
        'gifFile': 'n_nase.gif',
        'audioFiles': ['n_soundeffect_de.mp3', 'n_longtext_de.mp3'],
        'pronunciationAudio': 'n_pronunciation_de.mp3',
      },
      {
        'word': 'Nilpferd',
        'pronunciation': 'neel-pfert',
        'imageFile': 'n_nilpferd.png',
        'gifFile': 'n_nilpferd.gif',
        'audioFiles': ['n_nilpferd_soundeffect_de.mp3', 'n_nilpferd_longtext_de.mp3'],
        'pronunciationAudio': 'n_nilpferd_pronunciation_de.mp3',
      },
    ],
    'O': [
      {
        'word': 'Orange',
        'pronunciation': 'oh-rahn-je',
        'imageFile': 'o_orange.png',
        'gifFile': 'o_orange.gif',
        'audioFiles': ['o_soundeffect_de.mp3', 'o_longtext_de.mp3'],
        'pronunciationAudio': 'o_pronunciation_de.mp3',
      },
      {
        'word': 'Oktopus',
        'pronunciation': 'ok-to-poos',
        'imageFile': 'o_oktopus.png',
        'gifFile': 'o_oktopus.gif',
        'audioFiles': ['o_oktopus_soundeffect_de.mp3', 'o_oktopus_longtext_de.mp3'],
        'pronunciationAudio': 'o_oktopus_pronunciation_de.mp3',
      },
    ],
    'P': [
      {
        'word': 'Pinguin',
        'pronunciation': 'pin-goo-een',
        'imageFile': 'p_pinguin.png',
        'gifFile': 'p_pinguin.gif',
        'audioFiles': ['p_soundeffect_de.mp3', 'p_longtext_de.mp3'],
        'pronunciationAudio': 'p_pronunciation_de.mp3',
      },
      {
        'word': 'Pferd',
        'pronunciation': 'pfert',
        'imageFile': 'p_pferd.png',
        'gifFile': 'p_pferd.gif',
        'audioFiles': ['p_pferd_soundeffect_de.mp3', 'p_pferd_longtext_de.mp3'],
        'pronunciationAudio': 'p_pferd_pronunciation_de.mp3',
      },
      {
        'word': 'Papagei',
        'pronunciation': 'pah-pa-guy',
        'imageFile': 'p_papagei.png',
        'gifFile': 'p_papagei.gif',
        'audioFiles': ['p_papagei_soundeffect_de.mp3', 'p_papagei_longtext_de.mp3'],
        'pronunciationAudio': 'p_papagei_pronunciation_de.mp3',
      },
    ],
    'Q': [
      {
        'word': 'Qualle',
        'pronunciation': 'kval-le',
        'imageFile': 'q_qualle.png',
        'gifFile': 'q_qualle.gif',
        'audioFiles': ['q_soundeffect_de.mp3', 'q_longtext_de.mp3'],
        'pronunciationAudio': 'q_pronunciation_de.mp3',
      },
    ],
    'R': [
      {
        'word': 'Rose',
        'pronunciation': 'roh-ze',
        'imageFile': 'r_rose.png',
        'gifFile': 'r_rose.gif',
        'audioFiles': ['r_soundeffect_de.mp3', 'r_longtext_de.mp3'],
        'pronunciationAudio': 'r_pronunciation_de.mp3',
      },
      {
        'word': 'Regenbogen',
        'pronunciation': 'ray-gen-boh-gen',
        'imageFile': 'r_regenbogen.png',
        'gifFile': 'r_regenbogen.gif',
        'audioFiles': ['r_regenbogen_soundeffect_de.mp3', 'r_regenbogen_longtext_de.mp3'],
        'pronunciationAudio': 'r_regenbogen_pronunciation_de.mp3',
      },
      {
        'word': 'Rabe',
        'pronunciation': 'rah-be',
        'imageFile': 'r_rabe.png',
        'gifFile': 'r_rabe.gif',
        'audioFiles': ['r_rabe_soundeffect_de.mp3', 'r_rabe_longtext_de.mp3'],
        'pronunciationAudio': 'r_rabe_pronunciation_de.mp3',
      },
    ],
    'S': [
      {
        'word': 'Sonne',
        'pronunciation': 'zon-ne',
        'imageFile': 's_sonne.png',
        'gifFile': 's_sonne.gif',
        'audioFiles': ['s_soundeffect_de.mp3', 's_longtext_de.mp3'],
        'pronunciationAudio': 's_pronunciation_de.mp3',
      },
      {
        'word': 'Schlange',
        'pronunciation': 'shlahn-ge',
        'imageFile': 's_schlange.png',
        'gifFile': 's_schlange.gif',
        'audioFiles': ['s_schlange_soundeffect_de.mp3', 's_schlange_longtext_de.mp3'],
        'pronunciationAudio': 's_schlange_pronunciation_de.mp3',
      },
      {
        'word': 'Schmetterling',
        'pronunciation': 'shmet-ter-ling',
        'imageFile': 's_schmetterling.png',
        'gifFile': 's_schmetterling.gif',
        'audioFiles': ['s_schmetterling_soundeffect_de.mp3', 's_schmetterling_longtext_de.mp3'],
        'pronunciationAudio': 's_schmetterling_pronunciation_de.mp3',
      },
    ],
    'T': [
      {
        'word': 'Tiger',
        'pronunciation': 'tee-ger',
        'imageFile': 't_tiger.png',
        'gifFile': 't_tiger.gif',
        'audioFiles': ['t_soundeffect_de.mp3', 't_longtext_de.mp3'],
        'pronunciationAudio': 't_pronunciation_de.mp3',
      },
      {
        'word': 'Taube',
        'pronunciation': 'tow-be',
        'imageFile': 't_taube.png',
        'gifFile': 't_taube.gif',
        'audioFiles': ['t_taube_soundeffect_de.mp3', 't_taube_longtext_de.mp3'],
        'pronunciationAudio': 't_taube_pronunciation_de.mp3',
      },
      {
        'word': 'Teddybär',
        'pronunciation': 'ted-dy-bair',
        'imageFile': 't_teddybaer.png',
        'gifFile': 't_teddybaer.gif',
        'audioFiles': ['t_teddybaer_soundeffect_de.mp3', 't_teddybaer_longtext_de.mp3'],
        'pronunciationAudio': 't_teddybaer_pronunciation_de.mp3',
      },
    ],
    'U': [
      {
        'word': 'Uhr',
        'pronunciation': 'oor',
        'imageFile': 'u_uhr.png',
        'gifFile': 'u_uhr.gif',
        'audioFiles': ['u_soundeffect_de.mp3', 'u_longtext_de.mp3'],
        'pronunciationAudio': 'u_pronunciation_de.mp3',
      }
    ],
    'V': [
      {
        'word': 'Vogel',
        'pronunciation': 'foh-gel',
        'imageFile': 'v_vogel.png',
        'gifFile': 'v_vogel.gif',
        'audioFiles': ['v_soundeffect_de.mp3', 'v_longtext_de.mp3'],
        'pronunciationAudio': 'v_pronunciation_de.mp3',
      },
      {
        'word': 'Veilchen',
        'pronunciation': 'file-khen',
        'imageFile': 'v_veilchen.png',
        'gifFile': 'v_veilchen.gif',
        'audioFiles': ['v_veilchen_soundeffect_de.mp3', 'v_veilchen_longtext_de.mp3'],
        'pronunciationAudio': 'v_veilchen_pronunciation_de.mp3',
      },
    ],
    'W': [
      {
        'word': 'Wasser',
        'pronunciation': 'vas-ser',
        'imageFile': 'w_wasser.png',
        'gifFile': 'w_wasser.gif',
        'audioFiles': ['w_soundeffect_de.mp3', 'w_longtext_de.mp3'],
        'pronunciationAudio': 'w_pronunciation_de.mp3',
      },
      {
        'word': 'Wal',
        'pronunciation': 'vahl',
        'imageFile': 'w_wal.png',
        'gifFile': 'w_wal.gif',
        'audioFiles': ['w_wal_soundeffect_de.mp3', 'w_wal_longtext_de.mp3'],
        'pronunciationAudio': 'w_wal_pronunciation_de.mp3',
      },
      {
        'word': 'Wolf',
        'pronunciation': 'volf',
        'imageFile': 'w_wolf.png',
        'gifFile': 'w_wolf.gif',
        'audioFiles': ['w_wolf_soundeffect_de.mp3', 'w_wolf_longtext_de.mp3'],
        'pronunciationAudio': 'w_wolf_pronunciation_de.mp3',
      },
    ],
    'X': [
      {
        'word': 'Xylophon',
        'pronunciation': 'ksy-lo-fon',
        'imageFile': 'x_xylophon.png',
        'gifFile': 'x_xylophon.gif',
        'audioFiles': ['x_soundeffect_de.mp3', 'x_longtext_de.mp3'],
        'pronunciationAudio': 'x_pronunciation_de.mp3',
      },
    ],
    'Y': [
      {
        'word': 'Yoga',
        'pronunciation': 'yoh-ga',
        'imageFile': 'y_yoga.png',
        'gifFile': 'y_yoga.gif',
        'audioFiles': ['y_soundeffect_de.mp3', 'y_longtext_de.mp3'],
        'pronunciationAudio': 'y_pronunciation_de.mp3',
      },
      {
        'word': 'Yak',
        'pronunciation': 'yahk',
        'imageFile': 'y_yak.png',
        'gifFile': 'y_yak.gif',
        'audioFiles': ['y_yak_soundeffect_de.mp3', 'y_yak_longtext_de.mp3'],
        'pronunciationAudio': 'y_yak_pronunciation_de.mp3',
      },
    ],
    'Z': [
      {
        'word': 'Zebra',
        'pronunciation': 'tse-bra',
        'imageFile': 'z_zebra.png',
        'gifFile': 'z_zebra.gif',
        'audioFiles': ['z_soundeffect_de.mp3', 'z_longtext_de.mp3'],
        'pronunciationAudio': 'z_pronunciation_de.mp3',
      },
      {
        'word': 'Ziege',
        'pronunciation': 'tsee-ge',
        'imageFile': 'z_ziege.png',
        'gifFile': 'z_ziege.gif',
        'audioFiles': ['z_ziege_soundeffect_de.mp3', 'z_ziege_longtext_de.mp3'],
        'pronunciationAudio': 'z_ziege_pronunciation_de.mp3',
      },
      {
        'word': 'Zitrone',
        'pronunciation': 'tsi-troh-ne',
        'imageFile': 'z_zitrone.png',
        'gifFile': 'z_zitrone.gif',
        'audioFiles': ['z_zitrone_soundeffect_de.mp3', 'z_zitrone_longtext_de.mp3'],
        'pronunciationAudio': 'z_zitrone_pronunciation_de.mp3',
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