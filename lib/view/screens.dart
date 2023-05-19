// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:responsive_builder/responsive_builder.dart';
// import 'package:squck_admin/core/colors.dart';
//
// import '../core/images_path.dart';
// import '../widgets/drawer_List.dart';
//
// class Screens extends StatefulWidget {
//   const Screens({Key? key}) : super(key: key);
//
//   @override
//   State<Screens> createState() => _ScreensState();
// }
//
// class _ScreensState extends State<Screens> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: ScreenTypeLayout(
//         mobile: MobileView(),
//         desktop: DesktopView(),
//       ),
//     );
//   }
//
//   Widget MobileView() {
//     return Container();
//   }
//
//   Widget DesktopView() {
//     return Row(
//       children: [
//         // Default Drawer
//         Expanded(
//             child: SizedBox(
//           width: Get.width,
//           height: Get.height,
//           child: ListView(
//             padding: const EdgeInsets.symmetric(horizontal: 11),
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 50, bottom: 43),
//                 child: Image.asset(
//                   logo,
//                   width: 260,
//                   height: 64,
//                 ),
//               ),
//               DrawerListTile(
//                 icons: Image.asset(
//                   dashboard,
//                   width: 50,
//                   height: 20,
//                   color: kWhiteColor,
//                 ),
//                 text: "Dashboard",
//                 press: () {},
//               ),
//               DrawerListTile(
//                 icons: Image.asset(
//                   sales,
//                   width: 50,
//                   height: 20,
//                   color: kWhiteColor,
//                 ),
//                 text: "Sales",
//                 press: () {},
//               ),
//               DrawerListTile(
//                 icons: Image.asset(
//                   products,
//                   width: 50,
//                   height: 20,
//                   color: kWhiteColor,
//                 ),
//                 text: "Products",
//                 press: () {},
//               ),
//               DrawerListTile(
//                 icons: Image.asset(
//                   customer,
//                   width: 50,
//                   height: 20,
//                   color: kWhiteColor,
//                 ),
//                 text: "Customer",
//                 press: () {},
//               ),
//               DrawerListTile(
//                 icons: Image.asset(
//                   profile,
//                   width: 50,
//                   height: 20,
//                   color: kWhiteColor,
//                 ),
//                 text: "Profile",
//                 press: () {},
//               ),
//               DrawerListTile(
//                 icons: Image.asset(
//                   settings,
//                   width: 50,
//                   height: 20,
//                   color: kWhiteColor,
//                 ),
//                 text: "Settings",
//                 press: () {},
//               ),
//             ],
//           ),
//         )),
//         // Default View Screen
//         Expanded(
//             flex: 4,
//             child: Container(
//               margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
//               width: Get.width,
//               height: Get.height,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: kSecondaryColor,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text("Dashbord Overview"),
//                   Container(
//                     child: Column(
//                       children: [],
//                     ),
//                   )
//                 ],
//               ),
//             )),
//       ],
//     );
//   }
// }
//
// // ignore: must_be_immutable
