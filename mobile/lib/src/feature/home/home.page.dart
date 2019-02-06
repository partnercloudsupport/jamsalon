import 'package:flutter/material.dart';
import 'package:jam_flutter_widgets/widgets.dart';
import 'package:jamsalon/src/core/store_connectors.dart';
import 'package:jamsalon/src/shared/widget/index.dart';
import '../../shared/build_bottom_navigation_bar.function.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[Home] -BUILDING- HomePage');
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(context, 0),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Theme.of(context).backgroundColor,
            expandedHeight: 330.0,
            pinned: true,
            elevation: 0.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              title: StoreConnectors.auth(builder: (vm) {
                return Text(
                  vm.user?.name ?? '',
                  style: Theme.of(context).textTheme.headline,
                );
              }),
              background: Container(
                padding: EdgeInsets.only(top: 80.0),
                height: 200.0,
                child: JamBubbleDecoration(
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: StoreConnectors.auth(
                      builder: (vm) => JamProfilePhoto(
                            photoUrl: vm.user.profile.photoUrl,
                            uploadPhoto: null,
                            removePhoto: null,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                StoreConnectors.auth(
                  builder: (vm) => Container(
                        alignment: Alignment.center,
                        child: AppRaisedButton(
                          onPressed: () => vm.signOut(),
                          label: 'Sign Out',
                        ),
                      ),
                ),
                SizedBox(height: 50.0),
                // JamProfileStats(
                //   children: [
                //     JamProfileStatItem(label: 'LAST VISIT', value: '10'),
                //     JamProfileStatItem(label: 'FAVORITES', value: '2'),
                //     JamProfileStatItem(label: 'RATING', value: '4'),
                //   ],
                // ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: JamCard(
                      title: 'User',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 100.0,
                            height: 100.0,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              color: Color.fromRGBO(240, 240, 240, 1.0),
                              onPressed: () =>
                                  Navigator.of(context).pushNamed('/profile'),
                              child: Text('Profile'),
                            ),
                          ),
                          SizedBox(
                            width: 100.0,
                            height: 100.0,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              color: Color.fromRGBO(240, 240, 240, 1.0),
                              onPressed: () =>
                                  Navigator.of(context).pushNamed('/settings'),
                              child: Text('Settings'),
                            ),
                          ),
                          SizedBox(
                            width: 100.0,
                            height: 100.0,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              color: Color.fromRGBO(240, 240, 240, 1.0),
                              onPressed: () {},
                              child: Text('Help'),
                            ),
                          ),
                        ],
                      )),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: JamCard(
                    title: 'Photos',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          height: 53.0,
                          child: Image.asset('assets/images/salon_1.jpg'),
                        ),
                        SizedBox(width: 5.0),
                        SizedBox(
                          height: 53.0,
                          child: Image.asset('assets/images/salon_2.jpg'),
                        ),
                        SizedBox(width: 5.0),
                        SizedBox(
                          height: 53.0,
                          child: Image.asset('assets/images/salon_3.jpg'),
                        ),
                        SizedBox(width: 5.0),
                        SizedBox(
                          height: 53.0,
                          width: 80.0,
                          child: Stack(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/salon_1.jpg',
                                color: Colors.black54,
                                colorBlendMode: BlendMode.darken,
                              ),
                              Center(
                                child: Text(
                                  '+5',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 300.0)
              ],
            ),
          )
        ],
      ),
    );
  }
}
