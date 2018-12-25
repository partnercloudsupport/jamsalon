import 'package:flutter/material.dart';

import 'search_location_container.controller.dart';
import '../initial_list/initial_list.view.dart';
import '../keyword_too_short_message/keyword_too_short_message.view.dart';
import '../prediction_list/prediction_list.view.dart';

class SearchLocationContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('-BUILDING- SeachLocationContainer');
    return SearchLocationContainerController.storeConnector(
      builder: (SearchLocationContainerViewModel vm) => Container(
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
