import 'package:jamsalon/src/feature/_.imports.dart';
import 'service_list_group_header.widget.dart';

class ServiceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[CheckIn] -BUILDING- ServiceList');
    return StoreConnectors.serviceList(
      builder: (vm) => ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: vm.list.length,
            itemBuilder: (context, i) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    vm.list[i].isFirstItem
                        ? ServiceListGroupHeader(text: vm.list[i].group?.name)
                        : Container(color: Colors.red),
                    ListTile(
                      title: Text(vm.list[i].name),
                      leading: Icon(Icons.info_outline),
                      trailing: Checkbox(
                        onChanged: (selected) =>
                            vm.setSelection(vm.list[i], selected),
                        value: vm.isSelected(vm.list[i]),
                      ),
                    ),
                  ],
                ),
          ),
    );
  }
}
