import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:squck_admin/core/colors.dart';

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
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: kBlackColor,
                        )),
                    TextSpan(
                        text: "${time.hour}:${time.minute} ",
                        style: const TextStyle(
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
                  Spacer(),
                  Container(
                    width: Get.width * 0.2,
                    height: Get.width * 0.04,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: kBlueGrayColor,
                      ),
                    ),
                    // child: TextFormField(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
