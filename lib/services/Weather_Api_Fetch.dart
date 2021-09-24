// ignore_for_file: file_names
import 'package:http/http.dart';
import 'dart:convert';

class weatherdata {
  var temp; //it will store the temperature of given location
  var description; //store the description of temparature
  var location; //location is provided by the user
  var humidity; //humidity info
  var windspeed; //windspeed info
  var country; //country info
  var data;
  weatherdata({this.location});

  Future<void> getweather() async {
    try {
      Response response = await get(Uri.parse(
          'http://api.openweathermap.org/data/2.5/weather?q=$location&appid=9142469dd9d23b74144edd82e7f8ec8d'));
      data = jsonDecode(response.body);

      temp = data['main']['temp'];
      description = data['weather'][0]['description'];
      country = data['sys']['country'];
      humidity = data['main']['humidity'];
      windspeed = data['wind']['speed'];
      location = data['name'];
    } catch (e) {
      location = 'Invalid Location';
    }
  }
}
