import 'package:jamsalon/src/feature/_.imports.dart';
import 'service_list_filter.view.dart';
import 'service_list.view.dart';

class SelectServiceStep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[CheckIn] -BUILDING- SelectServiceStep');
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ServiceListFilter(),
          SizedBox(height: 20.0),
          Expanded(child: ServiceList()),
        ],
      ),
    );
  }
}
