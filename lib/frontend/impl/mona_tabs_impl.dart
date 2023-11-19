import 'package:eliud_core_model/model/app_model.dart';
import 'package:eliud_core_model/style/frontend/has_tabs.dart';
import 'package:eliud_core_model/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorful_tab/flutter_colorful_tab.dart';

class MonaTabsImpl implements HasTabs {
  final Style _style;

  MonaTabsImpl(this._style);

  @override
  Widget tabBar(AppModel app, BuildContext context,
      {required List<String> items, required TabController tabController}) {
    var tabItems = <TabItem>[];
    for (var item in items) {
      tabItems.add(TabItem(
          color: Colors.black12,
          title: _style.frontEndStyle().textStyle().text(
                app,
                context,
                item,
              )));
    }
    return ColorfulTabBar(
      tabs: tabItems,
      controller: tabController,
    );
  }

  @override
  Widget tabBar2(AppModel app, BuildContext context,
      {required List<Widget> items, required TabController tabController}) {
    var tabItems = <TabItem>[];
    for (var item in items) {
      tabItems.add(TabItem(color: Colors.black12, title: item));
    }
    return ColorfulTabBar(
      tabs: tabItems,
      controller: tabController,
    );
  }
}
