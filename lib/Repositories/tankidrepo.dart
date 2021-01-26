import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';
import '../models/tankidmodel.dart';

class TankIdRepo {
  Future<List<String>> tankIds(String email) async {
    final prefs = await SharedPreferences.getInstance();
    final result = await http.post(GETTANKIDSURL,
        body: jsonEncode(RequestTankIdsModel(email)),
        headers: {
          HttpHeaders.authorizationHeader: prefs.getString("token")
        });
    if (result.statusCode != 200) {
      return null;
    }
    prefs.setString("token", result.headers['Authorization']);
    final response = ResponseTankIdsModel.fromJson(jsonDecode(result.body));
    return response.tankIds;
  }
}
