import 'dart:math' as math;
import 'package:flutter/material.dart';

/// Note that the userID needs to be globally unique,
final String localUserID = math.Random().nextInt(10000).toString();

// Replace with your App Id from Zegocloud
const appId = 0;

// Replace with your App Sign from Zegocloud
const appSign = "";

// Colors
const kScaffoldBgColor = Color(0xFF080b2c);
const kPrimaryColor = Color(0xFF7a18e9);
const kWhiteColor = Color(0xFFFFFFFF);
const kAccentColor = Color(0xFF161a40);

MaterialColor primarySwatch = MaterialColor(0xFF7a18e9, <int, Color>{
    50: const Color(0xFF7a18e9).withOpacity(0.1),
    100: const Color(0xFF7a18e9).withOpacity(0.2),
    200: const Color(0xFF7a18e9).withOpacity(0.3),
    300: const Color(0xFF7a18e9).withOpacity(0.4),
    400: const Color(0xFF7a18e9).withOpacity(0.5),
    500: const Color(0xFF7a18e9).withOpacity(0.6),
    600: const Color(0xFF7a18e9).withOpacity(0.7),
    700: const Color(0xFF7a18e9).withOpacity(0.8),
    800: const Color(0xFF7a18e9).withOpacity(0.9),
    900: const Color(0xFF7a18e9).withOpacity(1.0),
  },
);

const kDefaultPadding = 20.0;