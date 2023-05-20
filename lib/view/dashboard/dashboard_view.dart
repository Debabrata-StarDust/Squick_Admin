import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:squck_admin/controller/year_search_controller.dart';
import 'package:squck_admin/core/colors.dart';
import 'package:squck_admin/core/images_path.dart';

import '../../widgets/search_field.dart';
import '../../widgets/year_search.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

DateTime time = DateTime.now();
TimeOfDay currentTime = TimeOfDay.now();
String formattedDate = DateFormat.yMMMMd().format(time);

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    const TextSpan(
                        text: "Dashboard Overview\n",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.black45,
                        )),
                    TextSpan(
                        text: "${time.hour}:${time.minute} ",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: kBlueGrayColor,
                        )),
                    const TextSpan(
                        text: "at\t",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: kBlueGrayColor,
                        )),
                    TextSpan(
                        text: formattedDate.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: kBlueGrayColor,
                        )),
                  ])),
                  const Spacer(),
                  const SearchField(
                    hintTextName: "Search..",
                    icons: Icon(Icons.search),
                  ),
                  // Drop Down Button
                  YearSearch(
                    value: "0",
                    text: "Option !",
                  ),
                  YearSearch(
                    value: "2",
                    text: "Option !",
                  ),
                  YearSearch(
                    value: "3",
                    text: "Option !",
                  ),
                  //Notification
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: Get.width * 0.04,
                    height: Get.width * 0.03,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: kBlueGrayColor,
                      ),
                    ),
                    child: Image.asset(
                      notification,
                      width: 20,
                      height: 20,
                      color: kBlueGrayColor,
                    ),
                  ),

                  // Nation
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: Get.width * 0.04,
                    height: Get.width * 0.03,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: kBlueGrayColor,
                      ),
                    ),
                    child: Image.asset(
                      india,
                      width: 20,
                      height: 20,
                    ),
                  ),
                  // Profile
                  Container(
                    width: Get.width * 0.05,
                    height: Get.width * 0.03,
                    alignment: Alignment.center,
                    child: Image.asset(
                      user,
                      width: 47,
                      height: 47,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




