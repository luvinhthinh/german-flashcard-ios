import 'dart:math';

class VietnameseData {
  // Static data structure with multiple words per letter
  static final Map<String, List<Map<String, dynamic>>> _letterOptions = {
    'A': [
      {
        'word': 'Ăn',
        'pronunciation': 'an',
        'imageFile': 'a_an.png',
        'gifFile': 'a_an.gif',
        'audioFiles': ['a_an_soundeffect_vi.mp3', 'a_an_longtext_vi.mp3'],
        'pronunciationAudio': 'a_an_pronunciation_vi.mp3',
      },
      {
        'word': 'Áo',
        'pronunciation': 'ao',
        'imageFile': 'a_ao.png',
        'gifFile': 'a_ao.gif',
        'audioFiles': ['a_ao_soundeffect_vi.mp3', 'a_ao_longtext_vi.mp3'],
        'pronunciationAudio': 'a_ao_pronunciation_vi.mp3',
      },
      {
        'word': 'Anh',
        'pronunciation': 'anh',
        'imageFile': 'a_anh.png',
        'gifFile': 'a_anh.gif',
        'audioFiles': ['a_anh_soundeffect_vi.mp3', 'a_anh_longtext_vi.mp3'],
        'pronunciationAudio': 'a_anh_pronunciation_vi.mp3',
      },
    ],
    'B': [
      {
        'word': 'Bóng',
        'pronunciation': 'bong',
        'imageFile': 'b_bong.png',
        'gifFile': 'b_bong.gif',
        'audioFiles': ['b_bong_soundeffect_vi.mp3', 'b_bong_longtext_vi.mp3'],
        'pronunciationAudio': 'b_bong_pronunciation_vi.mp3',
      },
      {
        'word': 'Bạn',
        'pronunciation': 'ban',
        'imageFile': 'b_ban.png',
        'gifFile': 'b_ban.gif',
        'audioFiles': ['b_ban_soundeffect_vi.mp3', 'b_ban_longtext_vi.mp3'],
        'pronunciationAudio': 'b_ban_pronunciation_vi.mp3',
      },
      {
        'word': 'Bàn',
        'pronunciation': 'ban',
        'imageFile': 'b_ban_table.png',
        'gifFile': 'b_ban_table.gif',
        'audioFiles': ['b_ban_table_soundeffect_vi.mp3', 'b_ban_table_longtext_vi.mp3'],
        'pronunciationAudio': 'b_ban_table_pronunciation_vi.mp3',
      },
    ],
    'C': [
      {
        'word': 'Cá',
        'pronunciation': 'ka',
        'imageFile': 'c_ca.png',
        'gifFile': 'c_ca.gif',
        'audioFiles': ['c_ca_soundeffect_vi.mp3', 'c_ca_longtext_vi.mp3'],
        'pronunciationAudio': 'c_ca_pronunciation_vi.mp3',
      },
      {
        'word': 'Cây',
        'pronunciation': 'kay',
        'imageFile': 'c_cay.png',
        'gifFile': 'c_cay.gif',
        'audioFiles': ['c_cay_soundeffect_vi.mp3', 'c_cay_longtext_vi.mp3'],
        'pronunciationAudio': 'c_cay_pronunciation_vi.mp3',
      },
      {
        'word': 'Cô',
        'pronunciation': 'ko',
        'imageFile': 'c_co.png',
        'gifFile': 'c_co.gif',
        'audioFiles': ['c_co_soundeffect_vi.mp3', 'c_co_longtext_vi.mp3'],
        'pronunciationAudio': 'c_co_pronunciation_vi.mp3',
      },
    ],
    'D': [
      {
        'word': 'Dạ',
        'pronunciation': 'ya',
        'imageFile': 'd_da.png',
        'gifFile': 'd_da.gif',
        'audioFiles': ['d_da_soundeffect_vi.mp3', 'd_da_longtext_vi.mp3'],
        'pronunciationAudio': 'd_da_pronunciation_vi.mp3',
      },
      {
        'word': 'Dê',
        'pronunciation': 'ye',
        'imageFile': 'd_de.png',
        'gifFile': 'd_de.gif',
        'audioFiles': ['d_de_soundeffect_vi.mp3', 'd_de_longtext_vi.mp3'],
        'pronunciationAudio': 'd_de_pronunciation_vi.mp3',
      },
    ],
    'E': [
      {
        'word': 'Em',
        'pronunciation': 'em',
        'imageFile': 'e_em.png',
        'gifFile': 'e_em.gif',
        'audioFiles': ['e_em_soundeffect_vi.mp3', 'e_em_longtext_vi.mp3'],
        'pronunciationAudio': 'e_em_pronunciation_vi.mp3',
      },
    ],
    'G': [
      {
        'word': 'Gà',
        'pronunciation': 'ga',
        'imageFile': 'g_ga.png',
        'gifFile': 'g_ga.gif',
        'audioFiles': ['g_ga_soundeffect_vi.mp3', 'g_ga_longtext_vi.mp3'],
        'pronunciationAudio': 'g_ga_pronunciation_vi.mp3',
      },
      {
        'word': 'Gió',
        'pronunciation': 'zo',
        'imageFile': 'g_gio.png',
        'gifFile': 'g_gio.gif',
        'audioFiles': ['g_gio_soundeffect_vi.mp3', 'g_gio_longtext_vi.mp3'],
        'pronunciationAudio': 'g_gio_pronunciation_vi.mp3',
      },
    ],
    'H': [
      {
        'word': 'Hoa',
        'pronunciation': 'hwa',
        'imageFile': 'h_hoa.png',
        'gifFile': 'h_hoa.gif',
        'audioFiles': ['h_hoa_soundeffect_vi.mp3', 'h_hoa_longtext_vi.mp3'],
        'pronunciationAudio': 'h_hoa_pronunciation_vi.mp3',
      },
      {
        'word': 'Học',
        'pronunciation': 'hok',
        'imageFile': 'h_hoc.png',
        'gifFile': 'h_hoc.gif',
        'audioFiles': ['h_hoc_soundeffect_vi.mp3', 'h_hoc_longtext_vi.mp3'],
        'pronunciationAudio': 'h_hoc_pronunciation_vi.mp3',
      },
    ],
    'I': [
      {
        'word': 'Ít',
        'pronunciation': 'it',
        'imageFile': 'i_it.png',
        'gifFile': 'i_it.gif',
        'audioFiles': ['i_it_soundeffect_vi.mp3', 'i_it_longtext_vi.mp3'],
        'pronunciationAudio': 'i_it_pronunciation_vi.mp3',
      },
    ],
    'K': [
      {
        'word': 'Kính',
        'pronunciation': 'king',
        'imageFile': 'k_kinh.png',
        'gifFile': 'k_kinh.gif',
        'audioFiles': ['k_kinh_soundeffect_vi.mp3', 'k_kinh_longtext_vi.mp3'],
        'pronunciationAudio': 'k_kinh_pronunciation_vi.mp3',
      },
    ],
    'L': [
      {
        'word': 'Lá',
        'pronunciation': 'la',
        'imageFile': 'l_la.png',
        'gifFile': 'l_la.gif',
        'audioFiles': ['l_la_soundeffect_vi.mp3', 'l_la_longtext_vi.mp3'],
        'pronunciationAudio': 'l_la_pronunciation_vi.mp3',
      },
      {
        'word': 'Lớn',
        'pronunciation': 'lon',
        'imageFile': 'l_lon.png',
        'gifFile': 'l_lon.gif',
        'audioFiles': ['l_lon_soundeffect_vi.mp3', 'l_lon_longtext_vi.mp3'],
        'pronunciationAudio': 'l_lon_pronunciation_vi.mp3',
      },
    ],
    'M': [
      {
        'word': 'Mẹ',
        'pronunciation': 'me',
        'imageFile': 'm_me.png',
        'gifFile': 'm_me.gif',
        'audioFiles': ['m_me_soundeffect_vi.mp3', 'm_me_longtext_vi.mp3'],
        'pronunciationAudio': 'm_me_pronunciation_vi.mp3',
      },
      {
        'word': 'Mèo',
        'pronunciation': 'meo',
        'imageFile': 'm_meo.png',
        'gifFile': 'm_meo.gif',
        'audioFiles': ['m_meo_soundeffect_vi.mp3', 'm_meo_longtext_vi.mp3'],
        'pronunciationAudio': 'm_meo_pronunciation_vi.mp3',
      },
    ],
    'N': [
      {
        'word': 'Nước',
        'pronunciation': 'nuk',
        'imageFile': 'n_nuoc.png',
        'gifFile': 'n_nuoc.gif',
        'audioFiles': ['n_nuoc_soundeffect_vi.mp3', 'n_nuoc_longtext_vi.mp3'],
        'pronunciationAudio': 'n_nuoc_pronunciation_vi.mp3',
      },
      {
        'word': 'Nhà',
        'pronunciation': 'nya',
        'imageFile': 'n_nha.png',
        'gifFile': 'n_nha.gif',
        'audioFiles': ['n_nha_soundeffect_vi.mp3', 'n_nha_longtext_vi.mp3'],
        'pronunciationAudio': 'n_nha_pronunciation_vi.mp3',
      },
    ],
    'O': [
      {
        'word': 'Ông',
        'pronunciation': 'ong',
        'imageFile': 'o_ong.png',
        'gifFile': 'o_ong.gif',
        'audioFiles': ['o_ong_soundeffect_vi.mp3', 'o_ong_longtext_vi.mp3'],
        'pronunciationAudio': 'o_ong_pronunciation_vi.mp3',
      },
    ],
    'P': [
      {
        'word': 'Phở',
        'pronunciation': 'fo',
        'imageFile': 'p_pho.png',
        'gifFile': 'p_pho.gif',
        'audioFiles': ['p_pho_soundeffect_vi.mp3', 'p_pho_longtext_vi.mp3'],
        'pronunciationAudio': 'p_pho_pronunciation_vi.mp3',
      },
    ],
    'Q': [
      {
        'word': 'Quả',
        'pronunciation': 'kwa',
        'imageFile': 'q_qua.png',
        'gifFile': 'q_qua.gif',
        'audioFiles': ['q_qua_soundeffect_vi.mp3', 'q_qua_longtext_vi.mp3'],
        'pronunciationAudio': 'q_qua_pronunciation_vi.mp3',
      },
    ],
    'R': [
      {
        'word': 'Rồng',
        'pronunciation': 'rong',
        'imageFile': 'r_rong.png',
        'gifFile': 'r_rong.gif',
        'audioFiles': ['r_rong_soundeffect_vi.mp3', 'r_rong_longtext_vi.mp3'],
        'pronunciationAudio': 'r_rong_pronunciation_vi.mp3',
      },
    ],
    'S': [
      {
        'word': 'Sách',
        'pronunciation': 'sak',
        'imageFile': 's_sach.png',
        'gifFile': 's_sach.gif',
        'audioFiles': ['s_sach_soundeffect_vi.mp3', 's_sach_longtext_vi.mp3'],
        'pronunciationAudio': 's_sach_pronunciation_vi.mp3',
      },
    ],
    'T': [
      {
        'word': 'Tôi',
        'pronunciation': 'toi',
        'imageFile': 't_toi.png',
        'gifFile': 't_toi.gif',
        'audioFiles': ['t_toi_soundeffect_vi.mp3', 't_toi_longtext_vi.mp3'],
        'pronunciationAudio': 't_toi_pronunciation_vi.mp3',
      },
      {
        'word': 'Thầy',
        'pronunciation': 'thay',
        'imageFile': 't_thay.png',
        'gifFile': 't_thay.gif',
        'audioFiles': ['t_thay_soundeffect_vi.mp3', 't_thay_longtext_vi.mp3'],
        'pronunciationAudio': 't_thay_pronunciation_vi.mp3',
      },
    ],
    'U': [
      {
        'word': 'Út',
        'pronunciation': 'ut',
        'imageFile': 'u_ut.png',
        'gifFile': 'u_ut.gif',
        'audioFiles': ['u_ut_soundeffect_vi.mp3', 'u_ut_longtext_vi.mp3'],
        'pronunciationAudio': 'u_ut_pronunciation_vi.mp3',
      },
    ],
    'V': [
      {
        'word': 'Và',
        'pronunciation': 'va',
        'imageFile': 'v_va.png',
        'gifFile': 'v_va.gif',
        'audioFiles': ['v_va_soundeffect_vi.mp3', 'v_va_longtext_vi.mp3'],
        'pronunciationAudio': 'v_va_pronunciation_vi.mp3',
      },
    ],
    'X': [
      {
        'word': 'Xe',
        'pronunciation': 'se',
        'imageFile': 'x_xe.png',
        'gifFile': 'x_xe.gif',
        'audioFiles': ['x_xe_soundeffect_vi.mp3', 'x_xe_longtext_vi.mp3'],
        'pronunciationAudio': 'x_xe_pronunciation_vi.mp3',
      },
    ],
    'Y': [
      {
        'word': 'Yêu',
        'pronunciation': 'yeu',
        'imageFile': 'y_yeu.png',
        'gifFile': 'y_yeu.gif',
        'audioFiles': ['y_yeu_soundeffect_vi.mp3', 'y_yeu_longtext_vi.mp3'],
        'pronunciationAudio': 'y_yeu_pronunciation_vi.mp3',
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