import 'package:meta/meta.dart';
import '../../model/index.dart';

@immutable
class CheckInState {
  final CheckIn item;
  final CheckIn formItem;
  final List<ServiceScope> serviceScopeList;
  final List<ServiceGroup> serviceGroupList;
  final List<Service> serviceList;
  final List<Service> filteredServiceList;
  final Service serviceListFilter;

  const CheckInState({
    @required this.item,
    @required this.formItem,
    @required this.serviceScopeList,
    @required this.serviceGroupList,
    @required this.serviceList,
    @required this.filteredServiceList,
    @required this.serviceListFilter,
  });

  CheckInState.initialize()
      : item = null,
        formItem = CheckIn(serviceList: const <Service>[]),
        serviceList = const <Service>[],
        serviceScopeList = const <ServiceScope>[],
        serviceGroupList = const <ServiceGroup>[],
        filteredServiceList = const <Service>[],
        serviceListFilter = Service(group: ServiceGroup(scope: ServiceScope()));

  CheckInState copyWith({
    CheckIn item,
    CheckIn formItem,
    List<ServiceScope> serviceScopeList,
    List<ServiceGroup> serviceGroupList,
    List<Service> serviceList,
    List<Service> filteredServiceList,
    Service serviceListFilter,
  }) {
    return CheckInState(
      item: item ?? this.item,
      formItem: formItem ?? this.formItem,
      serviceScopeList: serviceScopeList ?? this.serviceScopeList,
      serviceGroupList: serviceGroupList ?? this.serviceGroupList,
      serviceList: serviceList ?? this.serviceList,
      filteredServiceList: filteredServiceList ?? this.filteredServiceList,
      serviceListFilter: serviceListFilter ?? this.serviceListFilter,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckInState &&
          this.item == other.item &&
          this.formItem == other.formItem &&
          this.serviceScopeList == other.serviceScopeList &&
          this.serviceGroupList == other.serviceGroupList &&
          this.serviceList == other.serviceList &&
          this.filteredServiceList == other.filteredServiceList &&
          this.serviceListFilter == other.serviceListFilter;

  @override
  int get hashCode =>
      this.item.hashCode ^
      this.formItem.hashCode ^
      this.serviceScopeList.hashCode ^
      this.serviceGroupList.hashCode ^
      this.serviceList.hashCode ^
      this.filteredServiceList.hashCode ^
      this.serviceListFilter.hashCode;
}
