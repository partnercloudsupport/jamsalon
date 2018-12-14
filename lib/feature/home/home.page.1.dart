import 'package:jamsalon/jam/jam_core/jam_card.widget.dart';
import 'package:jamsalon/jam/jam_decoration/jam_bubble_decoration.widget.dart';
import 'package:jamsalon/jam/jam_profile_photo/jam_profile_photo.widget.dart';
import 'package:jamsalon/jam/jam_profile_stats/jam_profile_stat_item.widget.dart';
import 'package:jamsalon/jam/jam_profile_stats/jam_profile_stats.widget.dart';
import 'package:flutter/material.dart';
import 'package:jamsalon/shared/build_bottom_navigation_bar.function.dart';

class HomePage extends StatelessWidget {
  HomePage();
  // Container(
  //   padding: EdgeInsets.only(top: 100.0),
  //   child: Container(
  //     height: 200.0,
  //     child: JamBubbleDecoration(
  //       child: Center(
  //         child: JamProfilePhoto(),
  //       ),
  //     ),
  //   ),
  // ),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(context, 0),
      body: Container(
        child: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Elisa Feranze',
                  style: TextStyle(fontSize: 36.0),
                ),
              ),
            ),
            JamProfileStats(
              children: [
                JamProfileStatItem(label: 'DAYS SINCE LAST VISIT', value: '10'),
                JamProfileStatItem(label: 'FAVORITES', value: '2'),
                JamProfileStatItem(label: 'RATING', value: '4'),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: JamCard(
                  title: 'Quick Actions',
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
                          onPressed: () {},
                          child: Text('Quick Check In'),
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
                          child: Text('Quick Silent Check In'),
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
                          child: Text('Quick Silent Check In and Close'),
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
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
          ],
        ),
      ),
    );
  }
}
