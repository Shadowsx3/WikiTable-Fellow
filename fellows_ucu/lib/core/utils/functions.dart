import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Functions {
  static void launch(String url) {
    launchUrl(Uri.parse(url));
  }

  static Size textSize({
    required String text,
    required TextStyle? style,
    int maxLines = 1,
    double maxWidth = double.infinity,
  }) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: maxLines,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: maxWidth);
    return textPainter.size;
  }
}
