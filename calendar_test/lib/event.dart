import 'package:flutter/material.dart';

class Event {
  // final DateTime date;
  final String title;
  Event({required this.title});

  @override
  String toString() => title;
}