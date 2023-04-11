// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Palette {
  final _primary = Color(0xFF00ddd8);
  final _secondary = Color(0xFF00716d);
  final _tertiary = Color(0xFF005957);

  Color get Primary => _primary;
  Color get Secondary => _secondary;
  Color get Tertiary => _tertiary;
}