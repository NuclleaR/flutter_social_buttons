import 'package:flutter/widgets.dart';

enum Buttons {
  Email,
  Google,
  GoogleDark,
  Facebook,
  FacebookNew,
  GitHub,
  Apple,
  AppleDark,
  LinkedIn,
  Pinterest,
  Tumblr,
  Twitter,
  Reddit,
  Quora,
  Yahoo,
  Hotmail,
  Xbox,
  Microsoft,
}

enum TextAlignment {
  start,
  end,
  center,
  spaceBetween,
  spaceAround,
  spaceEvenly,
}

extension TextAlignmentExtension on TextAlignment {
  MainAxisAlignment get alignment {
    switch(this) {
      case TextAlignment.start:
        return MainAxisAlignment.start;
      case TextAlignment.end:
        return MainAxisAlignment.end;
      case TextAlignment.center:
        return MainAxisAlignment.center;
      case TextAlignment.spaceBetween:
        return MainAxisAlignment.spaceBetween;
      case TextAlignment.spaceAround:
        return MainAxisAlignment.spaceAround;
      case TextAlignment.spaceEvenly:
        return MainAxisAlignment.spaceEvenly;
      default:
        return MainAxisAlignment.start;
    }
  }
}