import 'package:get/get.dart';

class YearSearchController extends GetxController {
  Rx<String> selectedYear = Rx<String>('');
  var formFor = "".obs;

  void updateSelectedValue(String newValue) {
    selectedYear.value = newValue;
  }
}
