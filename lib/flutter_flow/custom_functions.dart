import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

List<String> stringToLitString(String text) {
  return text.split('&');
}

bool showScroll(
  double scrollPosition,
  double scrollThreshold,
) {
  // get boolean to find when page screen is scrolled with parameter changed
  if (scrollPosition > scrollThreshold) {
    return true;
  } else {
    return false;
  }
}
