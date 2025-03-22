import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jiakin_app/models/jiakin_response.dart';

class JiakinProvider extends ChangeNotifier {
  // API Response
  JiakinResponse? response;

  Future<void> fetchJiakin() async {
    final apiResponse = await http.get(
      Uri.parse('https://api.jikan.moe/v4/anime'),
    );

    if (apiResponse.statusCode == 200) {
      response = jiakinResponseFromJson(apiResponse.body);
    } else {
      throw Exception('Something went wrong, please retry');
    }

    notifyListeners();
  }
}
