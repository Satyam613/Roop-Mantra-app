// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:meraapp/model/weather_model_demo.dart';
// import 'package:meraapp/services/weather_service.dart';

// class GeoScreen extends StatefulWidget {
//   const GeoScreen({Key? key}) : super(key: key);

//   @override
//   State<GeoScreen> createState() => _GeoScreenState();
// }

// class _GeoScreenState extends State<GeoScreen> {
//   String _temperature = '';
//   String _stationName = '';
//   String _humidity = '';
//   String _clouds = '';
//   bool _isbusy = false;
//   bool _isVisible = false;
//   Future<WeatherService> getGeoLocation() async {
//     WeatherService weather = WeatherService();
//     await weather.getCurrentLocation();
//     return weather;
//   }

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController latController = TextEditingController();
//     TextEditingController lonController = TextEditingController();

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Location APP'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(
//             child: TextField(
//               controller: latController,
//               decoration: InputDecoration(
//                 labelText: 'Latitude',
//                 hintText: 'Enter Latitude value',
//                 border:
//                     OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Expanded(
//             child: TextField(
//               controller: latController,
//               decoration: InputDecoration(
//                 labelText: 'Longitude',
//                 hintText: 'Enter Longituded value',
//                 border:
//                     OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () async {
//                   var service = await getGeoLocation();
//                   latController.text = service.latitude.toString();
//                   lonController.text = service.longitude.toString();
//                 },
//                 child: const Text(" get current Location"),
//               ),
//               const SizedBox(width: 10),
//               ElevatedButton(
//                 onPressed: () async {
//                   setState(() {
//                     _isbusy = true;
//                   });
//                   double latitude = double.parse(latController.text);
//                   double longitude = double.parse(lonController.text);

//                   var weatherResult = Weather();
//                   await weatherResult.getWeatherReport(longitude, latitude);
//                   setState(() {
//                     _temperature = weatherResult.temperature;
//                     _clouds = weatherResult.clouds;
//                     _humidity = weatherResult.humidity;
//                     _isbusy = false;
//                     _isVisible = false;
//                     _stationName = weatherResult.stationName;
//                   });
//                 },
//                 child: const Text(" get weather report"),
//               ),
//             ],
//           ),
//           const SizedBox(height: 10.0),
//           Visibility(
//             visible: _isVisible,
//             child: SpinKitFadingCircle(
//               itemBuilder: (BuildContext context, int index) {
//                 return DecoratedBox(
//                   decoration: BoxDecoration(
//                     color: index.isEven ? Colors.red : Colors.green,
//                   ),
//                 );
//               },
//             ),
//           ),
//           const SizedBox(height: 10.0),
//           Visibility(
//             visible: _isVisible,
//             child: Card(
//               elevation: 10.0,
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       const Expanded(
//                         child: Text('Station Name'),
//                       ),
//                       Expanded(child: Text(_stationName)),
//                     ],
//                   ),
//                   const SizedBox(height: 10.0),
//                   Row(
//                     children: [
//                       const Expanded(
//                         child: Text('Temperature'),
//                       ),
//                       Expanded(child: Text(_temperature)),
//                     ],
//                   ),
//                   const SizedBox(height: 10.0),
//                   Row(
//                     children: [
//                       const Expanded(
//                         child: Text('Humidity'),
//                       ),
//                       Expanded(child: Text(_humidity)),
//                     ],
//                   ),
//                   const SizedBox(height: 10.0),
//                   Row(
//                     children: [
//                       const Expanded(
//                         child: Text('Clouds'),
//                       ),
//                       Expanded(child: Text(_clouds)),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
