import 'package:eliud_core/style/frontend/has_page_route_builder.dart';
import 'package:eliud_core/style/frontend/has_split.dart';
import 'package:eliud_core/style/frontend/has_text_bubble.dart';
import 'package:eliud_stl_mona/frontend/impl/mona_page_route_builder_impl.dart';

import '../frontend/impl/mona_button_impl.dart';
import '../frontend/impl/mona_list_tile_impl.dart';
import '../frontend/impl/mona_tabs_impl.dart';
import 'package:eliud_core/style/frontend/frontend_style.dart';
import 'package:eliud_core/style/frontend/has_app.dart';
import 'package:eliud_core/style/frontend/has_appbar.dart';
import 'package:eliud_core/style/frontend/has_bottom_navigation_bar.dart';
import 'package:eliud_core/style/frontend/has_button.dart';
import 'package:eliud_core/style/frontend/has_container.dart';
import 'package:eliud_core/style/frontend/has_dialog.dart';
import 'package:eliud_core/style/frontend/has_dialog_field.dart';
import 'package:eliud_core/style/frontend/has_dialog_widget.dart';
import 'package:eliud_core/style/frontend/has_divider.dart';
import 'package:eliud_core/style/frontend/has_drawer.dart';
import 'package:eliud_core/style/frontend/has_icon.dart';
import 'package:eliud_core/style/frontend/has_list_tile.dart';
import 'package:eliud_core/style/frontend/has_menu.dart';
import 'package:eliud_core/style/frontend/has_page_body.dart';
import 'package:eliud_core/style/frontend/has_profile_photo.dart';
import 'package:eliud_core/style/frontend/has_progress_indicator.dart';
import 'package:eliud_core/style/frontend/has_style.dart';
import 'package:eliud_core/style/frontend/has_table.dart';
import 'package:eliud_core/style/frontend/has_tabs.dart';
import 'package:eliud_core/style/frontend/has_text.dart';
import 'package:eliud_core/style/frontend/has_text_form_field.dart';

import '../styles/mona_style.dart';
import 'impl/mona_app_impl.dart';
import 'impl/mona_appbar_impl.dart';
import 'impl/mona_bottom_navigation_bar_impl.dart';
import 'impl/mona_container_impl.dart';
import 'impl/mona_dialog_field_impl.dart';
import 'impl/mona_dialog_impl.dart';
import 'impl/mona_dialog_widget_impl.dart';
import 'impl/mona_divider_impl.dart';
import 'impl/mona_drawer_impl.dart';
import 'impl/mona_icon_impl.dart';
import 'impl/mona_menu_impl.dart';
import 'impl/mona_page_body_impl.dart';
import 'impl/mona_profile_photo_impl.dart';
import 'impl/mona_progress_indicator_impl.dart';
import 'impl/mona_split_impl.dart';
import 'impl/mona_style_impl.dart';
import 'impl/mona_table_impl.dart';
import 'impl/mona_text_bubble_impl.dart';
import 'impl/mona_text_form_field_impl.dart';
import 'impl/mona_text_impl.dart';

class MonaFrontEndStyle implements FrontEndStyle {
  final MonaStyle _monaStyle;
  late HasPageBody monaPageBodyImpl;
  late HasMenu monaMenuImpl;
  late HasDrawer monaDrawerImpl;
  late HasBottomNavigationBar monaBottomNavigationBarImpl;
  late HasAppBar monaAppBarImpl;
  late HasProfilePhoto monaProfilePhotoImpl;
  late HasContainer monaContainerImpl;
  late HasProgressIndicator monaProgressIndicatorImpl;
  late HasApp monaAppImpl;
  late HasListTile monaListTileImpl;
  late HasDialogField monaDialogFieldImpl;
  late HasDialog monaDialogImpl;
  late HasDialogWidget monaDialogWidgetImpl;
  late HasButton monaButtonImpl;
  late HasText monaTextImpl;
  late HasTable monaTableImpl;
  late HasTexFormField monaTextFormFieldImpl;
  late HasStyle monaStyleImpl;
  late HasIcon monaIconImpl;
  late HasDivider monaDividerImpl;
  late HasTabs monaTabsImpl;
  late HasSplit monaSplitImpl;
  late HasPageRouteBuilder monaPageRouteBuilder;
  late HasTextBubble monaTextBubbleImpl;

  MonaFrontEndStyle(this._monaStyle) {
    monaPageBodyImpl = MonaPageBodyImpl(_monaStyle);
    monaMenuImpl = MonaMenuImpl(_monaStyle);
    monaDrawerImpl = MonaDrawerImpl(_monaStyle);
    monaBottomNavigationBarImpl = MonaBottomNavigationBarImpl(_monaStyle);
    monaAppBarImpl = MonaAppBarImpl(_monaStyle);
    monaProfilePhotoImpl = MonaProfilePhotoImpl();
    monaContainerImpl = MonaContainerImpl(_monaStyle);
    monaProgressIndicatorImpl = MonaProgressIndicatorImpl(_monaStyle);
    monaAppImpl = MonaAppImpl(_monaStyle);
    monaListTileImpl = MonaListTileImpl(_monaStyle);
    monaDialogFieldImpl = MonaDialogFieldImpl(_monaStyle);
    monaDialogImpl = MonaDialogImpl(_monaStyle);
    monaDialogWidgetImpl = MonaDialogWidgetImpl(_monaStyle);
    monaButtonImpl = MonaButtonImpl(_monaStyle);
    monaTextImpl = MonaTextImpl(_monaStyle);
    monaTableImpl = MonaTableImpl(_monaStyle);
    monaTextFormFieldImpl = MonaTextFormFieldImpl(_monaStyle);
    monaStyleImpl = MonaStyleImpl(_monaStyle);
    monaIconImpl = MonaIconImpl(_monaStyle);
    monaDividerImpl = MonaDividerImpl(_monaStyle);
    monaTabsImpl = MonaTabsImpl(_monaStyle);
    monaSplitImpl = MonaSplitImpl(_monaStyle);
    monaPageRouteBuilder = MonaPageRouteBuilderImpl(_monaStyle);
    monaTextBubbleImpl = MonaTextBubbleImpl(_monaStyle);
  }

  @override
  HasAppBar appBarStyle() => monaAppBarImpl;

  @override
  HasApp appStyle() => monaAppImpl;

  @override
  HasBottomNavigationBar bottomNavigationBarStyle() => monaBottomNavigationBarImpl;

  @override
  HasButton buttonStyle() => monaButtonImpl;

  @override
  HasContainer containerStyle() => monaContainerImpl;

  @override
  HasDialogField dialogFieldStyle() => monaDialogFieldImpl;

  @override
  HasDialog dialogStyle() => monaDialogImpl;

  @override
  HasDialogWidget dialogWidgetStyle() => monaDialogWidgetImpl;

  @override
  HasDivider dividerStyle() => monaDividerImpl;

  @override
  HasDrawer drawerStyle() => monaDrawerImpl;

  @override
  HasIcon iconStyle() => monaIconImpl;

  @override
  HasListTile listTileStyle() => monaListTileImpl;

  @override
  HasMenu menuStyle() => monaMenuImpl;

  @override
  HasPageBody pageBodyStyle() => monaPageBodyImpl;

  @override
  HasProfilePhoto profilePhotoStyle() => monaProfilePhotoImpl;

  @override
  HasProgressIndicator progressIndicatorStyle() => monaProgressIndicatorImpl;

  @override
  HasTable tableStyle() => monaTableImpl;

  @override
  HasTexFormField texFormFieldStyle() => monaTextFormFieldImpl;

  @override
  HasText textStyle() => monaTextImpl;

  @override
  HasStyle textStyleStyle() => monaStyleImpl;

  @override
  HasTabs tabsStyle() => monaTabsImpl;

  @override
  HasPageRouteBuilder pageRoutBuilder() => monaPageRouteBuilder;

  @override
  HasSplit splitStyle() => monaSplitImpl;

  @override
  HasTextBubble textBubbleStyle() => monaTextBubbleImpl;
}