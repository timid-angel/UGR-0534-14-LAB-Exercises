// Exercise 2
import 'package:http/http.dart' as http;
import 'dart:io';

void main() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  final newFile = File('downloaded.json');
  try {
    dynamic response = await http.get(url);
    if (newFile.existsSync()) {
      throw Exception('File already exists');
    }
    await newFile.create();
    await newFile.writeAsString(response.body);
  } catch (e) {
    print(e.toString());
  }
}
