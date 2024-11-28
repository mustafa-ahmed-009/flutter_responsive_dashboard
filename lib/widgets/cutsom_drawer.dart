import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/drawer_item_data.dart';
import 'package:responsive_dash_board/widgets/drawer_list_tile.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool active = false;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.8,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTile(
                image: Assets.imagesAvatar1,
                title: "Mustafa Ahmed ",
                subTitle: "Mustafa@gmail.com"),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          SliverList.builder(
            itemCount: drawerModels.length,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: DrawerListTile(
                  drawerItemModel: drawerModels[index],
                  isActive: index == selectedIndex,
                )),
          ),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                DrawerListTile(
                  drawerItemModel: DrawerItemModel(
                      title: "System Settings", image: Assets.imagesSetting2),
                  isActive: false,
                ),
                DrawerListTile(
                  drawerItemModel: DrawerItemModel(
                      title: "Logout", image: Assets.imagesLogout),
                  isActive: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
