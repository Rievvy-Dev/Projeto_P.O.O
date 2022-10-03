import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_size.dart';

class HomeScreenController with ChangeNotifier {
  String city;
  HomeScreenController(this.city);

  Map<String, HighlightedWord> changeWord() {
    return {
      city: HighlightedWord(
        textStyle: const TextStyle(
            color: AppColors.kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: AppSize.kLargeSize),
      ),
    };
  }
}
