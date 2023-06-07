import 'package:flutter/widgets.dart';
import 'widgets/home_widget.dart';

class HomeRootWidget extends StatelessWidget {
  final bool isCurrent;
  const HomeRootWidget({required Key key, required this.isCurrent})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Offstage(offstage: !isCurrent, child: const HomeWidget());
  }
}
