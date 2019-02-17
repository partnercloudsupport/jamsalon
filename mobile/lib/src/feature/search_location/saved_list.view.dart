import 'package:jam_flutter_widgets/widgets.dart' as jam;

import 'package:jamsalon/src/feature/_.imports.dart';
import 'search_location_card.widget.dart';
import 'search_location_list_item.view.dart';

class SavedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnectors.savedList(
      builder: (vm) => SearchLocationCard(
            title: UiConfig.SAVED_LIST_CAPTION,
            child: jam.ExpandableColumn(
              initialCount: 3,
              viewMoreText: UiConfig.VIEW_MORE_BUTTON_TEXT,
              children: vm.list
                  .map(
                    (item) => SearchLocationListItem(
                          icon: item.name == 'Home'
                              ? Icons.home
                              : Icons.location_on,
                          item: item,
                        ),
                  )
                  .toList(),
            ),
          ),
    );
  }
}
