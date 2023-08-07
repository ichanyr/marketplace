import 'dart:convert';
import 'api_model.dart';
import 'package:http/http.dart' as http;

class Get {
  final _baseUrl = 'https://cat-fact.herokuapp.com/facts';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        print(response.body);
        List<dynamic> jsonEncode = json.decode(response.body);
        List<Api> api = jsonEncode.map((e) => Api.fromJson(e)).toList();
        return api;
      }
    } catch (e) {
      print(e.toString());
      //print('Error fetching data: $error');
    }
  }
}
