import 'package:jam_dart_interfaces/interfaces.dart';
import 'package:meta/meta.dart';

@immutable
class BlocAPI {
  final DatabaseInterface databaseService;
  final LocationInterface locationService;
  final PlaceInterface placeService;

  BlocAPI({this.databaseService, this.locationService, this.placeService});
}
