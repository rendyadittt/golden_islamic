import 'package:flutter/material.dart';
import 'package:golden_islamic/model/quran/ayat.dart';
import 'package:golden_islamic/page/quran/detail_quran.dart';
import 'package:golden_islamic/page/quran/quran.dart';

class Routes {
  static void navigateToQuranPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return QuranPageParent();
    }));
  }

  static void navigateToDetailQuranPage(BuildContext context, List<ModelAyat> data) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return DetailQuranPage(quran: data);
    }));
  }
}
