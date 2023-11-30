import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@isTest
Future<void> vmTest(String description,
    Function() tests,) async {
  test(description, () async {
    await runZonedGuarded(() async {
      tests();
    }, (error, stack) {
      throw error;
    });
  });
}

bool equalsValue(dynamic expected, dynamic actual) {
  return equals(expected).matches(actual, {});
}