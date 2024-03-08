// Exercise 4
import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  final url = Uri.parse(
      'https://api.open-meteo.com/v1/forecast?latitude=9.02&longitude=38.4&hourly=temperature_2m&timezone=Africa%2FCairo&forecast_days=1');

  try {
    dynamic response = await http.get(url);
    dynamic data = await jsonDecode(response.body);
    print(
        'Most recent reading in Addis Ababa: ${data["hourly"]["temperature_2m"][0]} ${data["hourly_units"]["temperature_2m"]}');
  } catch (e) {
    print(e.toString());
  }
}
