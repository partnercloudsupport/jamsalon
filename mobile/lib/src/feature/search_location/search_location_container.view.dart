import 'package:flutter/material.dart';

import '../../core/store_connectors.dart';
import 'initial_list.view.dart';
import 'keyword_too_short_message.view.dart';
import 'prediction_list.view.dart';

class SearchLocationContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[SearchLocation] -BUILDING- SeachLocationContainer');
    return StoreConnectors.searchLocationContainer(
      builder: (vm) => Container(
            padding: const EdgeInsets.all(10.0),
            child: vm.hasUserStartedTyping
                ? vm.isKeywordTooShortToSearch
                    ? KeywordTooShortMessage()
                    : PredictionList()
                : InitialList(),
          ),
    );
  }
}
