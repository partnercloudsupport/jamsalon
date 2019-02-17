import 'package:jamsalon/src/feature/_.imports.dart';
import 'search_location_titled_container.widget.dart';

class SearchLocationCard extends StatelessWidget {
  final String title;
  final Widget child;

  const SearchLocationCard({
    this.title,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: this.title == null
            ? this.child
            : SearchLocationTitledContainer(
                title: this.title, child: this.child),
      ),
    );
  }
}
