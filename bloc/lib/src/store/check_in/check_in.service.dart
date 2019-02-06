import 'package:meta/meta.dart';

import '../../../jamsalon_bloc.dart';
import '../../model/index.dart';

class CheckInService {
  static List<Service> fillServiceList({
    @required List<Service> list,
    @required List<ServiceGroup> groupList,
    @required List<ServiceScope> scopeList,
  }) {
    assert(list != null);
    assert(groupList != null);
    assert(scopeList != null);

    return list.map((item) {
      final group = groupList.firstWhere(
        (groupItem) => groupItem.key == item.groupKey,
        orElse: () => ServiceGroup(),
      );
      final scope = scopeList.firstWhere(
        (scopeItem) => scopeItem.key == group.scopeKey,
        orElse: () => ServiceScope(),
      );

      return item.copyWith(group: group.copyWith(scope: scope));
    }).toList()
      ..sort((a, b) => a.name.compareTo(b.name))
      ..sort((a, b) => a.group.name.compareTo(b.group.name));
  }

  static List<Service> filterServiceList(List<Service> list, Service filter) {
    Service previousItem;

    return list
        .where((item) =>
            ((filter.gender == null) ||
                ((item.gender != null) && (item.gender == filter.gender))) &&
            ((filter.group?.scope?.key == null ||
                    filter.group?.scope?.key == 'all') ||
                ((item.group?.scope?.key != null) &&
                    (item.group?.scope?.key == filter.group?.scope?.key))) &&
            ((filter.suitedBodyFeature == null) ||
                ((filter.suitedBodyFeature != null) &&
                    (item.suitedBodyFeature
                        .isEquivalentTo(filter.suitedBodyFeature)))))
        .map((item) {
      final bool isFirstItem =
          item.groupKey != null && item.groupKey != previousItem?.groupKey;
      previousItem = item;
      return item.copyWith(isFirstItem: isFirstItem);
    }).toList();
  }

  static CheckIn refreshFormItem(CheckIn formItem) {
    final selectedSalon = MyAppBloc.store.state.salonState.selectedItem;

    if (selectedSalon?.key == formItem?.salon?.key) {
      return formItem;
    } else {
      return CheckIn(
        user: MyAppBloc.store.state.authState.user,
        salon: selectedSalon,
        serviceList: const <Service>[],
      );
    }
  }
}
