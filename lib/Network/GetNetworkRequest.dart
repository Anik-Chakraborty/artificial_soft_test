import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<dynamic>> GetRequest(String URL) async {
  try {
    http.Response response = await http.get(
      Uri.parse('$URL'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    ).timeout(const Duration(seconds: 5));
    return ['Completed', response];
  } catch (error) {
    debugPrint('Error');
    return ['Error', []];
  }
}
