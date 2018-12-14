import 'package:flutter/material.dart';
import 'package:jamsalon/jam/widgets/jam_profile_stats/jam_profile_stat_item.widget.dart';

class JamProfileStats extends StatelessWidget {
  final List<JamProfileStatItem> children;
  JamProfileStats({this.children = const []});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: this.children,
      ),
    );
  }
}
