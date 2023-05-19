import 'package:flutter/material.dart';

import '../core/colors.dart';

class DrawerListTile extends StatelessWidget {
  DrawerListTile({super.key, this.text, this.press, this.icons});

  final String? text;
  Widget? icons;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0, bottom: 28),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryColor,
      ),
      child: ListTile(
        horizontalTitleGap: 0.0,
        onTap: press,
        leading: icons,
        title: Text(
          text!,
          style: const TextStyle(color: kWhiteColor),
        ),
      ),
    );
  }
}
