/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 model/admin_app.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'package:eliud_core/tools/admin_app_base.dart';
import '../tools/bespoke_models.dart';

import 'package:eliud_core/model/abstract_repository_singleton.dart';
import 'package:eliud_core/model/model_export.dart';

class AdminApp extends AdminAppInstallerBase {
  final String appId;
  final DrawerModel _drawer;
  final DrawerModel _endDrawer;
  final AppBarModel _appBar;
  final HomeMenuModel _homeMenu;
  final RgbModel menuItemColor;
  final RgbModel selectedMenuItemColor;
  final RgbModel backgroundColor;

  /// Construct the AdminApp
  AdminApp(
      this.appId,
      this._drawer,
      this._endDrawer,
      this._appBar,
      this._homeMenu,
      this.menuItemColor,
      this.selectedMenuItemColor,
      this.backgroundColor);

  /// Retrieve the admin pages
  PageModel _monaStyleAttributessPages() {
    List<BodyComponentModel> components = [];
    components.add(BodyComponentModel(
        documentID: "internalWidget-monaStyleAttributess",
        componentName: "eliud_stl_mona_internalWidgets",
        componentId: "monaStyleAttributess"));
    PageModel page = PageModel(
        conditions: StorageConditionsModel(
          privilegeLevelRequired:
              PrivilegeLevelRequiredSimple.ownerPrivilegeRequiredSimple,
        ),
        appId: appId,
        documentID: "eliud_stl_mona_monastyleattributess_page",
        title: "MonaStyleAttributess",
        description: "MonaStyleAttributess",
        drawer: _drawer,
        endDrawer: _endDrawer,
        appBar: _appBar,
        homeMenu: _homeMenu,
        bodyComponents: components,
        layout: PageLayout.onlyTheFirstComponent);
    return page;
  }

  Future<void> _setupAdminPages() {
    return pageRepository(appId: appId)!.add(_monaStyleAttributessPages());
  }

  /// Run the admin, i.e setup all admin pages
  @override
  Future<void> run() async {
    return _setupAdminPages();
  }
}

class AdminMenu extends AdminAppMenuInstallerBase {
  /// Construct the admin menu
  @override
  Future<MenuDefModel> menu(AppModel app) async {
    var menuItems = <MenuItemModel>[];

    menuItems.add(MenuItemModel(
        documentID: "MonaStyleAttributess",
        text: "MonaStyleAttributess",
        description: "MonaStyleAttributess",
        icon: IconModel(codePoint: 0xe88a, fontFamily: "MaterialIcons"),
        action:
            GotoPage(app, pageID: "eliud_stl_mona_monastyleattributess_page")));

    MenuDefModel menu = MenuDefModel(
        admin: true,
        documentID: "eliud_stl_mona_admin_menu",
        appId: app.documentID,
        name: "eliud_stl_mona",
        menuItems: menuItems);
    await menuDefRepository(appId: app.documentID)!.add(menu);
    return menu;
  }
}

class AdminAppWiper extends AdminAppWiperBase {
  /// Delete all admin pages
  @override
  Future<void> deleteAll(String appID) async {}
}
