import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UniversitiesProvider extends ChangeNotifier {
  final String _baseUrl = 'tyba-assets.s3.amazonaws.com';

  List<dynamic> onDisplayUniversities = [];

  UniversitiesProvider() {
    getOnDisplayUniversities();
  }

  getOnDisplayUniversities() async {
    var url = Uri.https(_baseUrl, '/FE-Engineer-test/universities.json');
    final response = await http.get(url);
    final decodedData = json.decode(response.body) as List<dynamic>;

    onDisplayUniversities = decodedData;

    notifyListeners();
  }
}
