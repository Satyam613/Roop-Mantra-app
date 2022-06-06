import 'package:http/http.dart' as http;
import 'dart:convert';

class Weather {
  late String stationName;
  late String countryCode;
  late String humidity;
  late String temperature;
  late String clouds;

  Future<void> getWeatherReport(double longitude, double latitude) async {
    var url = Uri.parse(
        'http://api.geonames.org/findNearByWeatherJSON?formatted=true&lat=$latitude&lng=$longitude&username=shubham&style=full');
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var data = response.body;
      stationName = jsonDecode(data)['WeatherObservation']['stationName'];
      countryCode = jsonDecode(data)['WeatherObservation']['countryCode'];
      humidity = jsonDecode(data)['WeatherObservation']['humidity'];
      temperature = jsonDecode(data)['WeatherObservation']['temperature'];
      clouds = jsonDecode(data)['WeatherObservation']['clouds'];
    }
  }
}
