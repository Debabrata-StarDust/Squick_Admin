import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:squck_admin/core/colors.dart';
import 'package:squck_admin/core/images_path.dart';

import '../../widgets/search_field.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

DateTime time = DateTime.now();
TimeOfDay currentTime = TimeOfDay.now();
String formattedDate = DateFormat.yMMMMd().format(time);

List yearSearch = [
  {"title": "2022", "value": "1"},
  {"title": "2023", "value": "2"},
  {"title": "2024", "value": "3"},
];

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.only(top: 55, left: 20, right: 20),
        children: [
          // Header Part //
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
                hintTextName: "Search",
                icons: Icon(Icons.search),
              ),
              // Drop Down Button
              // const YearSearch(
              //   value: "0",
              //   text: "Option !",
              // ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                width: Get.width * 0.1,
                height: Get.height * 0.06,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: kBlueGrayColor),
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButton(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 0,
                    underline: Container(),
                    items: [
                      const DropdownMenuItem<String>(
                        value: "",
                        child: Text(
                          "This Year",
                        ),
                      ),
                      ...yearSearch.map<DropdownMenuItem<String>>((e) {
                        return DropdownMenuItem(
                          child: Text(e["title"]),
                          value: e["value"],
                        );
                      }).toList(),
                      // DropdownMenuItem(
                      //   value: "2",
                      //   child: Text(" 2023"),
                      // ),
                      // DropdownMenuItem(
                      //   value: "3",
                      //   child: Text("2024"),
                      // ),
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        newValue;
                      });
                    }),
              ),

              //Notification
              Container(
                margin: const EdgeInsets.only(left: 10),
                width: Get.width * 0.04,
                height: Get.height * 0.06,
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
                height: Get.height * 0.06,
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
                height: Get.height * 0.06,
                alignment: Alignment.center,
                child: Image.asset(
                  user,
                  width: 47,
                  height: 47,
                ),
              ),
            ],
          ),
          SizedBox(
            height: Get.height * 0.1,
          ),
          // Body Part //
          SizedBox(
            height: Get.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        salesView(),
                        const SizedBox(
                          width: 10,
                        ),
                        salesView(),
                        const SizedBox(
                          width: 10,
                        ),
                        salesView(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Sales Chat Row
                    Row(
                      children: [
                        const Text(
                          "Sales Analytics",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          salesAnalysis,
                          width: 15,
                          height: 15,
                          color: Colors.green,
                        ),
                        const Text("\tMarket Sales"),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          salesAnalysis,
                          width: 15,
                          height: 15,
                          color: Colors.purpleAccent,
                        ),
                        const Text("\tOnline Sales"),
                        Padding(
                          padding: EdgeInsets.only(left: 200),
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: Get.width * 0.1,
                            height: Get.height * 0.05,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: kBlueGrayColor),
                                borderRadius: BorderRadius.circular(10)),
                            child: DropdownButton(
                                borderRadius: BorderRadius.circular(10),
                                elevation: 0,
                                underline: Container(),
                                items: [
                                  const DropdownMenuItem<String>(
                                    value: "",
                                    child: Text(
                                      "This Year",
                                    ),
                                  ),
                                  ...yearSearch
                                      .map<DropdownMenuItem<String>>((e) {
                                    return DropdownMenuItem(
                                      child: Text(e["title"]),
                                      value: e["value"],
                                    );
                                  }).toList(),
                                  // DropdownMenuItem(
                                  //   value: "2",
                                  //   child: Text(" 2023"),
                                  // ),
                                  // DropdownMenuItem(
                                  //   value: "3",
                                  //   child: Text("2024"),
                                  // ),
                                ],
                                onChanged: (String? newValue) {
                                  setState(() {
                                    newValue;
                                  });
                                }),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kBlueGrayColor),
                    )
                  ],
                ),
                recentSales()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget recentSales() {
    return Container(
      width: Get.width * 0.2,
      height: Get.height * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: kBlueGrayColor,
          )),
      child: SizedBox(
        height: Get.height * 0.7,
        child: ListView.builder(
            itemCount: 27,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: kBlueGrayColor,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }

  Widget salesView() {
    return Container(
      height: Get.height * 0.2,
      width: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: kBlueGrayColor,
          )),
      child: ListView(
        padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  shopping,
                  width: 20,
                  height: 20,
                  color: kPrimaryColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.green.shade200),
                  child: Image.asset(
                    salesUp,
                    width: 15,
                    height: 15,
                    color: Colors.green,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text(
                  "+16.24%",
                  style: TextStyle(color: Colors.green),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
                text: "Total Sales\n",
                style: TextStyle(
                  color: kBlueGrayColor,
                )),
            TextSpan(
                text: "\$23,090.00\n",
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: 22,
                )),
            TextSpan(
                text: "Compare to (\$17,00.00 last year)",
                style: TextStyle(
                  color: kBlueGrayColor,
                )),
          ]))
        ],
      ),
    );
  }
}
