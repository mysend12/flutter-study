import 'package:flutter/cupertino.dart';

class ExceptionHandler {

  void onErrorDetails(FlutterErrorDetails details) {
    print(details);
  }

  void onError(Object error, StackTrace trace) {
    print(error);
    print(trace);
  }
}