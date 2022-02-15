import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netzary_assignment/services/networking/networking.dart';

Future<Networking> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('https://milkiyat.bangalore2.com/api/home/'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    final bodydata = response.body;
    final bodyAsJson = jsonDecode(bodydata) as Map<String, dynamic>;
    final _data = Networking.fromJson(bodyAsJson);
    return _data;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
