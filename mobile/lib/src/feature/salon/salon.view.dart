import 'package:jamsalon/src/feature/_.imports.dart';

class Salon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[Salon] -BUILDING- Salon');
    return StoreConnectors.salon(
      builder: (vm) => Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        vm.item.name,
                        style: Theme.of(context)
                            .textTheme
                            .display1
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        vm.item.location,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(top: 50.0, right: 20.0),
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 200.0,
                          height: 300.0,
                          child: Image.asset(
                            vm.item.photoPath,
                            fit: BoxFit.fitHeight,
                            // fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 40.0),
                  child: StoreConnectors.showCheckInPageButton(builder: (vm) {
                    return MaterialButton(
                      minWidth: double.infinity,
                      height: 50.0,
                      color: Colors.green,
                      child: Text(
                        'Check In',
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(color: Colors.white),
                      ),
                      onPressed: () {
                        vm.initializeForm();
                        Navigator.of(context).pushNamed('/check_in');
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
    );
  }
}
