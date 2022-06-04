import 'package:flutter/material.dart';

import '../widgets/AppText.dart';

class DrawerItem extends StatefulWidget {
  final String text;
  final Icon icon;
  final Color iconColor;
  final double iconSize = 20;

  const DrawerItem(
      {Key? key,
      required this.text,
      required this.icon,
      required this.iconColor})
      : super(key: key);

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  late Color itemBgColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.transparent,
        height: 27,
        child: Row(
          children: [
            Icon(widget.icon.icon, color: widget.iconColor),
            SizedBox(
              width: widget.iconSize,
            ),
            AppText(text: widget.text),
          ],
        ),
      ),
      onTap: () {
        print(widget.text);
      },
    );
  }
}
