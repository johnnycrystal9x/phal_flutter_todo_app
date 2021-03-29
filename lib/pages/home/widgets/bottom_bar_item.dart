import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:phal_flutter_todo_app/configs/themes.dart';
import 'package:phal_flutter_todo_app/data/db/models/tab_item_model.dart';
import 'package:phal_flutter_todo_app/pages/home/widgets/tabbar_controller.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({Key key, this.tabItem, this.iconColor}) : super(key: key);

  final TabItemModel tabItem;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: () => Get.find<TabBarController>().onChangeTab(tabItem.type),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SvgPicture.asset(
                  tabItem.icon,
                  width: 24,
                  height: 24,
                  color: iconColor,
                ),
                SizedBox(height: 5),
                Text(
                  tabItem.label,
                  textAlign: TextAlign.center,
                  style: textDef.copyWith(color: iconColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
