import 'package:jamsalon/src/feature/_.imports.dart';

class ServiceListGroupHeader extends StatelessWidget {
  final String text;

  const ServiceListGroupHeader({this.text = ''});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 5.0,
        ),
        decoration: BoxDecoration(
          // color: Theme.of(context).buttonColor,
          color: Colors.black87,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Text(
          this.text.toUpperCase(),
          style:
              Theme.of(context).textTheme.caption.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
