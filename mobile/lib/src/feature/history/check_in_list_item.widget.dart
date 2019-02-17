import 'package:intl/intl.dart';

import 'package:bloc/models.dart' as model show CheckIn;
import 'package:jamsalon/src/feature/_.imports.dart';

class CheckInListItem extends StatelessWidget {
  final model.CheckIn checkIn;
  CheckInListItem({this.checkIn});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(245, 245, 220, 1.0),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Column(
            children: <Widget>[
              Text(
                this.checkIn.startTime.day.toString(),
                style: TextStyle(fontSize: 24.0, color: Colors.green),
              ),
              Text(
                  DateFormat.MMM().format(this.checkIn.startTime).toUpperCase(),
                  style: TextStyle(fontSize: 12.0, color: Colors.black54)),
            ],
          ),
        ),
      ),
      contentPadding: EdgeInsets.all(10.0),
      title: Text(this.checkIn.salon.name),
      subtitle: Text(this.checkIn.salon.location),
      onTap: () {},
    );
  }
}
