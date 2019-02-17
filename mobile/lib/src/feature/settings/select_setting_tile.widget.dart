import 'package:jamsalon/src/feature/_.imports.dart';

class SelectSettingTile<T> extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final Widget Function(T item) itemBuilder;
  final List<T> selectionList;
  final T value;
  final Function(T value) onSubmit;

  const SelectSettingTile({
    Key key,
    @required this.title,
    this.subtitle = '',
    this.icon,
    @required this.value,
    @required this.itemBuilder,
    this.selectionList = const [],
    @required this.onSubmit,
  })  : assert(title != null),
        assert(itemBuilder != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[Settings] -BUILDING- SelectSettingItem');

    return ListTile(
      title: Text(this.title),
      subtitle: Text(
        this.subtitle,
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
      trailing: Icon(Icons.keyboard_arrow_right),
      // onTap: () => showModalBottomSheet<T>(
      //       context: context,
      //       builder: (context) => _buildBottomSheet(context),
      //     ).then((result) => result == null || result == this.value
      //         ? null
      //         : this.onSubmit(result)),
      onTap: () => showCupertinoModalPopup<T>(
            context: context,
            builder: (context) => _buildIosDialog(context),
          ).then((result) => result == null || result == this.value
              ? null
              : this.onSubmit(result)),
    );
  }

  // BottomSheet _buildBottomSheet(BuildContext context) {
  //   return BottomSheet(
  //     onClosing: () {},
  //     builder: (context) {
  //       return SingleChildScrollView(
  //         child: Container(
  //           color: Colors.white,
  //           child: Column(
  //             children: this
  //                 .selectionList
  //                 .map((item) => FlatButton(
  //                       onPressed: () => Navigator.of(context).pop(item),
  //                       child: this.itemBuilder(item),
  //                     ))
  //                 .toList(),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  CupertinoActionSheet _buildIosDialog(BuildContext context) {
    return CupertinoActionSheet(
      // cancelButton: CupertinoActionSheetAction(
      //   onPressed: () => Navigator.of(context).pop(),
      //   child: Text('Cancel'),
      // ),
      actions: this
          .selectionList
          .map((item) => CupertinoActionSheetAction(
                onPressed: () => Navigator.of(context).pop(item),
                child: this.itemBuilder(item),
              ))
          .toList(),
    );
  }

  // SimpleDialog _buildDialog(BuildContext context) {
  //   return SimpleDialog(
  //     children: this
  //         .selectionList
  //         .map((item) => GestureDetector(
  //               onTap: () => Navigator.of(context).pop(item),
  //               child: this.itemBuilder(item),
  //             ))
  //         .toList(),
  //   );
  // }
}
