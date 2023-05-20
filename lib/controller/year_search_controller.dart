import 'package:get/get.dart';

class YearSearchController extends GetxController {
  Rx<String> selectedYear = Rx<String>('');// Holds the selected value

  void updateSelectedValue(String newValue) {
    selectedYear.value = newValue;
  }
}