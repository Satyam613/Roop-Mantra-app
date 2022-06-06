import 'package:meraapp/fragments/cab_fragment.dart';
import 'package:meraapp/fragments/default_fragment.dart';
import 'package:meraapp/fragments/flight_fragment.dart';
import 'package:meraapp/fragments/hotel_fragment.dart';

class Pageroute {
  static const String home = DefaultFragment.routeName;
  static const String car = CabFragment.routeName;
  static const String hotel = HotelFragment.routeName;
  static const String flight = FlightFragment.routeName;
}
