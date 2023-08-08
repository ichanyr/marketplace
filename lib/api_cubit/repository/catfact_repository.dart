import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/catfact.dart';

class CatFactRepository {
  Future<List<CatFact>> getAll() async {
    const url = "https://cat-fact.herokuapp.com/facts";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      print(response.body);
      final json = jsonDecode(response.body) as List; //

      final result = json.map((e) {
        return CatFact.fromJson(e);
      }).toList();
      print(result);
      return result;
    } else {
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}
