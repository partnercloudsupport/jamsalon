import 'package:jamsalon/shared/model/index.dart';
import 'package:jamsalon/jam/service/firestore/index.dart';

class DatabaseService {
  static Tables tables;

  static initialize() {
    JamDatabaseService.initialize().listen(DatabaseService.fromMetadata);
  }

  static fromMetadata(List<Metadata> list) {
    DatabaseService.tables = new Tables();
    list.forEach((item) {
      switch (item.name) {
        case 'Salon':
          DatabaseService.tables.salon = Table<Salon>(
            path: item.path,
            instanceCreator: ({key, map}) => Salon.fromMap(key: key, map: map),
          );
          break;
        case 'User':
          DatabaseService.tables.user = Table<User>(
            path: item.path,
            instanceCreator: ({key, map}) => User.fromMap(key: key, map: map),
          );
          break;
        default:
      }
    });
  }
}
