import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';

class TTsController extends GetxController {
  FlutterTts flutterTts = FlutterTts();

  void speak({required String text}) {
    flutterTts.setLanguage("en-in");
    flutterTts.setPitch(1.0);
    flutterTts.setSpeechRate(0.4);
    flutterTts.speak(text);
  }

  void stop() {
    flutterTts.stop();
  }
}

class TTsGController extends GetxController {
  FlutterTts flutterTts = FlutterTts();

  void speak({required String text}) {
    flutterTts.setLanguage("gu");
    flutterTts.setPitch(0.9);
    flutterTts.setSpeechRate(0.4);
    flutterTts.speak(text);
  }

  void stop() {
    flutterTts.stop();
  }
}

class TTsHController extends GetxController {
  FlutterTts flutterTts = FlutterTts();

  void speak({required String text}) {
    flutterTts.setLanguage("hi");
    flutterTts.setPitch(0.9);
    flutterTts.setSpeechRate(0.4);
    flutterTts.speak(text);
  }

  void stop() {
    flutterTts.stop();
  }
}
