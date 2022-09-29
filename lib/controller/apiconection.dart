import 'package:http/http.dart' as http;

import '../modelclass.dart';

Future<List<Empty>> fetchAlbum() async {
  final response = await http.get(Uri.parse(
      "https://run.mocky.io/v3/bdcdffd7-df4c-4645-8290-d451ea6fe98a"));
  print(response.body);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return emptyFromJson(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
