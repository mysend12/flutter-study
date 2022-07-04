import 'package:calendar_test/calendar.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:http/http.dart' as http;

void main() {
  var token = "xoxb-3491253956549-3780327835760-uBKFApeLZdGMVulVQocyDSLi";
  var url = Uri.parse('https://slack.com/api/chat.postMessage');

  var body = new Map<String, dynamic>();
  body['channel'] = 'C03MTTK8763';

  var headers = new Map<String, String>();
  headers['Authorization'] = 'Bearer xoxb-3491253956549-3780327835760-uBKFApeLZdGMVulVQocyDSLi';

  FlutterError.onError = (FlutterErrorDetails details) async {
    FlutterError.presentError(details);
    String text = details.stack.toString();
    body['text'] = text;
    // await http.post(url, body: body, headers: headers);
  };

  initializeDateFormatting('ko_KR', null);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calendar Test",
      home: Calendar(),
    );
  }
}
