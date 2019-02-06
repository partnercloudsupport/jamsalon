import 'package:meta/meta.dart';

import '../../model/index.dart';

class InitializeFormAction {
  const InitializeFormAction();
}

class FetchServiceScopeListAction {
  const FetchServiceScopeListAction();
}

class FetchServiceScopeListSuccessAction {
  final List<ServiceScope> list;

  const FetchServiceScopeListSuccessAction({@required this.list});
}

class FetchServiceGroupListAction {
  const FetchServiceGroupListAction();
}

class FetchServiceGroupListSuccessAction {
  final List<ServiceGroup> list;

  const FetchServiceGroupListSuccessAction({@required this.list});
}

class FetchServiceListAction {
  const FetchServiceListAction();
}

class FetchServiceListSuccessAction {
  final List<Service> list;

  const FetchServiceListSuccessAction({@required this.list});
}

class FilterServiceListAction {
  final Service filter;

  const FilterServiceListAction({@required this.filter});
}

class SelectServiceAction {
  final Service item;

  const SelectServiceAction({@required this.item});
}

class DeselectServiceAction {
  final Service item;

  const DeselectServiceAction({@required this.item});
}

class CheckInAction {
  const CheckInAction();
}

class CheckInSuccessAction {
  final CheckIn item;

  const CheckInSuccessAction({@required this.item});
}
