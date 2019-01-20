import 'package:meta/meta.dart';

import '../../model/index.dart';

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

class CheckInAction {
  final CheckIn item;

  const CheckInAction({@required this.item});
}

class CheckInSuccessAction {
  final CheckIn item;

  const CheckInSuccessAction({@required this.item});
}
