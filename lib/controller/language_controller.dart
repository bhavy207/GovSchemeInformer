import 'package:flutter/material.dart';

// class LanguageController with ChangeNotifier {
//   bool _isGujarati = false;
//   bool _isHindi = false;
//
//   bool get isGujarati => _isGujarati;
//   bool get isHindi => _isHindi;
//
//   // Method to toggle between Gujarati, Hindi, and English
//   void toggleLanguage() {
//     if (_isGujarati) {
//       _isGujarati = false;
//       _isHindi = true;
//     } else if (_isHindi) {
//       _isHindi = false;
//     } else {
//       _isGujarati = true;
//     }
//     notifyListeners();
//   }
// }

class LanguageController with ChangeNotifier{
  bool isHindi = false;
  bool isGujarati = false;

  void toggleLanguage({bool hindi = false, bool english = false, bool gujarati = false}) {
    // If any of the language flags is set to true, update the corresponding language flag and reset others
    if (hindi) {
      isHindi = true;
      isGujarati = false;
     } else if (english) {
      isHindi = false;
      isGujarati = false;
    } else if (gujarati) {
      isHindi = false;
      isGujarati = true;
    }
    notifyListeners();
  }
}
