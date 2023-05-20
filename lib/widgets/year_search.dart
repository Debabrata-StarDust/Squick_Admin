import 'package:get/get.dart';
import 'package:flutter/material.dart';
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
