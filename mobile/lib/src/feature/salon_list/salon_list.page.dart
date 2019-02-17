import 'package:jamsalon/src/feature/_.imports.dart';
import 'search_bar.view.dart';
import 'salon_list.view.dart';

class SalonListPage extends StatelessWidget {
  const SalonListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[SalonList] -BUILDING- SalonListPage');
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(context, 1),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SearchBar(),
            SalonList(),
          ],
        ),
      ),
    );
  }
}
