import 'package:flutter/material.dart';

import 'appColors.dart';

TextStyle header1 = const TextStyle(
    color: blackPrimary, fontWeight: FontWeight.bold, fontSize: 24);

TextStyle buttonText = const TextStyle(
  color: white,
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

TextStyle heading2 = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w700,
);

TextStyle heading5 = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

TextStyle heading6 = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

TextStyle generalText = const TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
);

ButtonStyle elevatedButtonPrimary = ElevatedButton.styleFrom(
  foregroundColor: white,
  backgroundColor: primary,
).copyWith(elevation: ButtonStyleButton.allOrNull(0.0));

ButtonStyle textButtonPrimary = TextButton.styleFrom(
  backgroundColor: lightPrimary_1);

