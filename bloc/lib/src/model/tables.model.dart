import 'package:jam_dart_models/models.dart';
import 'package:meta/meta.dart';

import 'check_in.model.dart';
import 'salon.model.dart';
import 'user.model.dart';

class Tables {
  ///
  ///
  ///
  static Table<Salon> _salon;
  static Table<CheckIn> _checkIn;
  static Table<User> _user;

  ///
  ///
  ///
  static Table<Salon> get salon => _salon;
  static Table<CheckIn> get checkIn => _checkIn;
  static Table<User> get user => _user;

  ///
  ///
  ///
  static construct(List<Table<Data>> tables) {
    tables.forEach((table) {
      switch (table.key) {
        case 'Salon':
          _salon = _createTable<Salon>(
            table: table,
            modelCreator: ({key, map}) => Salon.fromMap(key: key, map: map),
          );
          break;
        case 'CheckIn':
          _checkIn = _createTable<CheckIn>(
            table: table,
            modelCreator: ({key, map}) => CheckIn.fromMap(key: key, map: map),
          );
          break;
        case 'User':
          _user = _createTable<User>(
            table: table,
            modelCreator: ({key, map}) => User.fromMap(key: key, map: map),
          );
          break;
        default:
      }
    });
  }

  static Table<T> _createTable<T extends Data>({
    @required Table<Data> table,
    @required ModelCreator<T> modelCreator,
  }) {
    return Table(
      key: table.key,
      name: table.name,
      path: table.path,
      resolvedPath: table.resolvedPath,
      modelCreator: modelCreator,
    );
  }
}
