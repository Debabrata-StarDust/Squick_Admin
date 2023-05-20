import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, this.icons, required this.hintTextName});

  final String hintTextName;
  final Widget? icons;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      width: Get.width * 0.2,
      height: Get.width * 0.03,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kWhiteColor,
        border: Border.all(
          width: 1,
          color: kBlueGrayColor,
        ),
      ),
      child: TextFormField(
        scrollPhysics: const BouncingScrollPhysics(),
        decoration: InputDecoration(
          suffixIcon: icons,
          hintText: hintTextName,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
