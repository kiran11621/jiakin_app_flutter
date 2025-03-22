import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class JiakinProvider extends ChangeNotifier {
  Future<void> fetchJiakin() async {
    final response = await http.get(
      Uri.parse('https://api.jikan.moe/v4/anime'),
    );

    if (response.statusCode == 200) {
      print('api was successful');
    } else {
      throw Exception('Something went wrong, please retry');
    }
  }
}
