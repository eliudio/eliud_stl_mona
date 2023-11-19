import 'package:eliud_core_model/access/access_bloc.dart';
import 'package:eliud_core_model/eliud.dart';
import 'package:eliud_core_model/model/access_model.dart';
import 'package:eliud_core_model/model/app_model.dart';
import 'package:eliud_core_model/model/member_model.dart';
import 'package:eliud_core_model/package/package.dart';
import 'package:eliud_core_model/style/style_registry.dart';
import 'package:eliud_core_model/tools/member_collection_info.dart';

import 'model/abstract_repository_singleton.dart';
import 'model/component_registry.dart';
import 'model/repository_singleton.dart';
import 'mona_stl_package_stub.dart'
    if (dart.library.io) 'mona_stl_mobile_package.dart'
    if (dart.library.html) 'mona_stl_web_package.dart';
import 'mona_style_family.dart';

abstract class MonaStlPackage extends Package {
  MonaStlPackage() : super('eliud_stl_mona');

  @override
  Future<List<PackageConditionDetails>>? getAndSubscribe(
          AccessBloc accessBloc,
          AppModel app,
          MemberModel? member,
          bool isOwner,
          bool? isBlocked,
          PrivilegeLevel? privilegeLevel) =>
      null;

  @override
  List<String>? retrieveAllPackageConditions() => null;

  @override
  List<MemberCollectionInfo> getMemberCollectionInfo() => [];

  @override
  void init() async {
    ComponentRegistry().init();

    AbstractRepositorySingleton.singleton = RepositorySingleton();

    // register style families
    StyleRegistry.registry().registerStyleFamily(MonaStyleFamily.instance());
  }

  @override
  List<Object?> get props => [];

  static MonaStlPackage instance() => getMonaStlPackage();

  /*
   * Register depending packages
   */
  @override
  void registerDependencies(Eliud eliud) {
    eliud.registerPackage(CorePackage.instance());
  }
}
