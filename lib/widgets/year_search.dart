import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/year_search_controller.dart';

class YearSearch extends GetView<YearSearchController> {
  const YearSearch({super.key, this.value, this.text});

  final String? value, text;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(YearSearchController());
    return Obx(() {
      return DropdownButton<String>(
        value: controller.selectedYear.value,
        onChanged: controller.selectedYear,
        items: [
          DropdownMenuItem(
            value: value,
            child: Text(text!),
          ),
          DropdownMenuItem(
            value: value,
            child: Text(text!),
          ),
          DropdownMenuItem(
            value: value,
            child: Text(text!),
          ),
        ],
      );
    });
  }
}
// DropdownButtonHideUnderline(
// child: DropdownButton2(
// customButton: Padding(padding: const EdgeInsets.symmetric(horizontal: 20), child: const Icon(Icons.arrow_drop_down)),
// items: ["Daily", "Weekly", "Monthly", "Yearly"]
//     .map(
// (item) => DropdownMenuItem<String>(
// value: item,
// child: Text(
// item,
// style: fontPoppins(fontSize: 14, fontWeight: FontWeight.w400),
// ),
// ),
// )
//     .toList(),
// value: formFor.value,
// onChanged: (value) {
// formFor.value = value as String;
// switch (formFor.value) {
// case "Daily":
// billFrequencyController.text = "daily";
// break;
// case "Weekly":
// billFrequencyController.text = "weekly";
// break;
// case "Monthly":
// billFrequencyController.text = "monthly";
// break;
// case "Yearly":
// billFrequencyController.text = "yearly";
// break;
// }
// },
// itemHeight: 48,
// itemPadding: const EdgeInsets.only(left: 16, right: 16),
// dropdownWidth: 180,
// dropdownPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
// dropdownDecoration: BoxDecoration(
// borderRadius: BorderRadius.circular(5),
// color: kWhiteColor,
// boxShadow: [BoxShadow(color: kBlackColor.withOpacity(0.08), blurRadius: 20, offset: Offset(1, 2))]),
// dropdownElevation: 0,
// ),
// ),
