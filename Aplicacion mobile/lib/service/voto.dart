import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


class VotoService {
  static const String _host = "https://api.sebastian.cl";
  static const String _auth = "sebastian.cl";

  static Future<bool> polls(BuildContext context) async {
    Uri uri = Uri.parse('$_host/vote/v1/voter/polls');
    Map<String, String> headers = {
      'Authorization': _auth,
    };

    final response = await http.get(uri, headers: headers);
    if (response.statusCode == 200) {
      var result = json.decode(response.body);
      final String token = result['token'];
      final String name = result['name'];
      final bool active = result[true];
      
      
          final int selection = 0;
          final String choice = result['choice'];
        
      
    }
    return false;
  }
}
