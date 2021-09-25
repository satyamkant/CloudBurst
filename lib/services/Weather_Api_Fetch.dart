// ignore_for_file: file_names, camel_case_types
import 'package:http/http.dart';
import 'dart:convert';

class weatherdata {
  String? temp; //it will store the temperature of given location
  String? description; //store the description of temparature
  String? location; //location is provided by the user
  String? humidity; //humidity info
  String? windspeed; //windspeed info
  String? country; //country info
  Map data = {};
  weatherdata({this.location});

  Future<void> getweather() async {
    try {
      Response response = await get(Uri.parse(
          'http://api.openweathermap.org/data/2.5/weather?q=$location&units=metric&appid=9142469dd9d23b74144edd82e7f8ec8d'));
      data = jsonDecode(response.body);

      temp = data['main']['temp'].toString();
      description = data['weather'][0]['description'].toString();
      country = data['sys']['country'].toString();
      humidity = data['main']['humidity'].toString();
      windspeed = data['wind']['speed'].toString();
      location = data['name'].toString();
    } catch (e) {
      location = 'Invalid';
    }
  }
}
