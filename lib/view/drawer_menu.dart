import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:squck_admin/controller/drawer_menu_controller.dart';

import '../core/colors.dart';
import '../core/images_path.dart';
import '../widgets/drawer_List.dart';

class DrawerMenu extends GetView<DrawerMenuController> {
  const DrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(DrawerMenuController());
    return Drawer(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 43),
              child: Image.asset(
                logo,
                width: 260,
                height: 64,
              ),
            ),
            DrawerListTile(
              icons: Image.asset(
                dashboard,
                width: 50,
                height: 20,
                color: kSecondaryColor,
              ),
              text: "Dashboard",
              press: () {
                controller.isLoading.value;

              },
            ),
            DrawerListTile(
              icons: Image.asset(
                sales,
                width: 50,
                height: 20,
                color: kSecondaryColor,
              ),
              text: "Sales",
              press: () {},
            ),
            DrawerListTile(
              icons: Image.asset(
                products,
                width: 50,
                height: 20,
                color: kSecondaryColor,
              ),
              text: "Products",
              press: () {},
            ),
            DrawerListTile(
              icons: Image.asset(
                customer,
                width: 50,
                height: 20,
                color: kSecondaryColor,
              ),
              text: "Customer",
              press: () {},
            ),
            DrawerListTile(
              icons: Image.asset(
                profile,
                width: 50,
                height: 20,
                color: kSecondaryColor,
              ),
              text: "Profile",
              press: () {},
            ),
            DrawerListTile(
              icons: Image.asset(
                settings,
                width: 50,
                height: 20,
                color: kSecondaryColor,
              ),
              text: "Settings",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
