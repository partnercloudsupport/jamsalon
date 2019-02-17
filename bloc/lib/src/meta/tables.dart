import 'package:jam_dart_interfaces/interfaces.dart';

import '../model/_.index.dart';

class Tables {
  ///
  /// Static Constructor
  ///
  static construct(DatabaseInterface databaseService) {
    _db = databaseService;
  }

  ///
  /// Table list
  ///
  static DatabaseInterface _db;

  ///
  /// Getters for individual tables
  ///
  static Table<CheckIn> get checkIn => _db.tables['CheckIn'];
  static Table<Salon> get salon => _db.tables['Salon'];
  static Table<Service> get service => _db.tables['Service'];
  static Table<ServiceGroup> get serviceGroup => _db.tables['ServiceGroup'];
  static Table<ServiceScope> get serviceScope => _db.tables['ServiceScope'];
  static Table<User> get user => _db.tables['User'];

  ///
  /// Table Creators
  ///
  static final Map<String, Table<dynamic> Function(Table<dynamic>)>
      instanceCreators = {
    'CheckIn': (table) => Table<CheckIn>.from(table).copyWith(
        modelCreator: ({key, map}) => CheckIn.fromMap(key: key, map: map)),
    'Salon': (table) => Table<Salon>.from(table).copyWith(
        modelCreator: ({key, map}) => Salon.fromMap(key: key, map: map)),
    'Service': (table) => Table<Service>.from(table).copyWith(
        modelCreator: ({key, map}) => Service.fromMap(key: key, map: map)),
    'ServiceGroup': (table) => Table<ServiceGroup>.from(table).copyWith(
        modelCreator: ({key, map}) => ServiceGroup.fromMap(key: key, map: map)),
    'ServiceScope': (table) => Table<ServiceScope>.from(table).copyWith(
        modelCreator: ({key, map}) => ServiceScope.fromMap(key: key, map: map)),
    'User': (table) => Table<User>.from(table).copyWith(
        modelCreator: ({key, map}) => User.fromMap(key: key, map: map)),
  };
}
