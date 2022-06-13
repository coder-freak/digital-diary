import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart' as c;
// Files
import '../widgets/my_container.dart';

/// Cupertino style action container widget
class ActionContainer extends StatelessWidget {
  const ActionContainer({
    required this.text,
    required this.icon,
    this.onTap,
  });

  final String text;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                color: c.CupertinoDynamicColor.resolve(
              c.CupertinoColors.label,
              context,
            )),
          ),
          Icon(
            icon,
            color: c.CupertinoDynamicColor.resolve(c.CupertinoColors.tertiaryLabel, context),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
