import 'package:jam_dart_interfaces/interfaces.dart';
import 'package:meta/meta.dart';

@immutable
class JamsalonApi {
  final DatabaseInterface databaseService;
  final LocationInterface locationService;
  final PlaceInterface placeService;

  JamsalonApi({this.databaseService, this.locationService, this.placeService});
}
