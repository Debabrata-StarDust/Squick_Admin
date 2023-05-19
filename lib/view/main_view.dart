import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../core/colors.dart';
import 'dashboard/dashboard_view.dart';
import 'drawer_menu.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenTypeLayout(
          mobile: MobileView(),
          desktop: DesktopView(),
        ),
      ),
    );
  }

  Widget MobileView() {
    return Container();
  }

  Widget DesktopView() {
    return Row(
      children: [
        // Default Drawer
        Expanded(
            child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: const DrawerMenu(),
        )),
        // Default View Screen
        Expanded(
            flex: 4,
            child: Container(
              margin: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              width: Get.width,
              height: Get.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kSecondaryColor,
              ),
              child: const DashboardView(),
            )),
      ],
    );
  }
}
