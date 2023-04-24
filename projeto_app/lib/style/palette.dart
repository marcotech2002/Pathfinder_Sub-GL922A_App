// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Palette {
  final _primary = Color(0xFF00ddd8);
  final _secondary = Color(0xFF00716d);
  final _tertiary = Color(0xFF005957);
  final _quaternary = Color.fromARGB(255, 163, 255, 253);

  final _error = Color.fromARGB(255, 135, 0, 0);
  final _message = Color(0xFFFFFFFF);

  Color get Primary => _primary;
  Color get Secondary => _secondary;
  Color get Tertiary => _tertiary;
  Color get Quaternary => _quaternary;

  Color get Error => _error;
  Color get Message => _message;
}