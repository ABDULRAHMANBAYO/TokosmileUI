import 'package:flutter/widgets.dart';

class WalletRootWidget extends StatelessWidget {
  final bool isCurrent;
  const WalletRootWidget({required Key key, required this.isCurrent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Offstage(
        offstage: !isCurrent,
        child: const Center(child: Text("WalletRootWidget")));
  }
}
