import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/year_search_controller.dart';

class YearSearch extends GetView<YearSearchController> {
  YearSearch({
    super.key,
  });

  // final String? value, text;
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  // String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(YearSearchController());
    return Obx(() {
      return DropdownButtonHideUnderline(
          child: DropdownButton2(
        isExpanded: true,
        items: items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: controller.formFor,
        onChanged: (value) {
          controller.formFor.value;
        },
      ));
    });
  }
}

//     DropdownButtonHideUnderline(
//     child: DropdownButton(
//       value: controller.selectedYear.value,
//
//       items: ["Daily", "Weekly", "Monthly", "Yearly"]
//           .map(
//             (item) => DropdownMenuItem<String>(
//               value: item,
//               child: Text(
//                 item,
//                 style: const TextStyle(
//                     fontSize: 14, fontWeight: FontWeight.w400),
//               ),
//             ),
//           )
//           .toList(),
//       // onChanged: controller.selectedYear,
//       onChanged: (value) {
//         formFor.value = value as String;
//         switch (formFor.value) {
//           case "2022":
//             controller.selectedYear. = "2022";
//             break;
//           case "Weekly":
//             controller.selectedYear = "2022";
//             break;
//           case "Monthly":
//             controller.selectedYear = "2022";
//             break;
//           case "Yearly":
//             controller.selectedYear = "2022";
//             break;
//         }
//
//       }
// }
//     }
// // itemHeight: 48,
// // itemPadding: const EdgeInsets.only(left: 16, right: 16),
// // dropdownWidth: 180,
// // dropdownPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
// // dropdownDecoration: BoxDecoration(
// // borderRadius: BorderRadius.circular(5),
// // color: kWhiteColor,
// // boxShadow: [BoxShadow(color: kBlackColor.withOpacity(0.08), blurRadius: 20, offset: Offset(1, 2))]),
// // dropdownElevation: 0,
//         ),
//       );
//
//       // DropdownMenuItem(
//       //   value: value,
//       //   child: Text(text!),
//       // ),
//       // DropdownMenuItem(
//       //   value: value,
//       //   child: Text(text!),
//       // ),
//       // DropdownMenuItem(
//       //   value: value,
//       //   child: Text(text!),
//       // ),
//     });
//   }
// }
// // DropdownButtonHideUnderline(
// // child: DropdownButton2(
// // customButton: Padding(padding: const EdgeInsets.symmetric(horizontal: 20), child: const Icon(Icons.arrow_drop_down)),
// // items: ["Daily", "Weekly", "Monthly", "Yearly"]
// //     .map(
// // (item) => DropdownMenuItem<String>(
// // value: item,
// // child: Text(
// // item,
// // style: fontPoppins(fontSize: 14, fontWeight: FontWeight.w400),
// // ),
// // ),
// // )
// //     .toList(),
// // value: formFor.value,
// // onChanged: (value) {
// // formFor.value = value as String;
// // switch (formFor.value) {
// // case "Daily":
// // billFrequencyController.text = "daily";
// // break;
// // case "Weekly":
// // billFrequencyController.text = "weekly";
// // break;
// // case "Monthly":
// // billFrequencyController.text = "monthly";
// // break;
// // case "Yearly":
// // billFrequencyController.text = "yearly";
// // break;
// // }
// // },
// // itemHeight: 48,
// // itemPadding: const EdgeInsets.only(left: 16, right: 16),
// // dropdownWidth: 180,
// // dropdownPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
// // dropdownDecoration: BoxDecoration(
// // borderRadius: BorderRadius.circular(5),
// // color: kWhiteColor,
// // boxShadow: [BoxShadow(color: kBlackColor.withOpacity(0.08), blurRadius: 20, offset: Offset(1, 2))]),
// // dropdownElevation: 0,
// // ),
// // ),
