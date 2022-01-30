import 'package:eliud_core/core/blocs/access/access_bloc.dart';
import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/model/member_model.dart';
import 'package:eliud_core/package/package.dart';
import 'package:eliud_core/style/style_registry.dart';
import 'package:flutter_bloc/src/bloc_provider.dart';
import 'package:eliud_core/model/access_model.dart';

import 'model/abstract_repository_singleton.dart';
import 'model/component_registry.dart';
import 'model/repository_singleton.dart';
import 'mona_style_family.dart';

abstract class MonaStlPackage extends Package {
  MonaStlPackage() : super('eliud_stl_mona');

  @override
  Future<List<PackageConditionDetails>>? getAndSubscribe(AccessBloc accessBloc, AppModel app, MemberModel? member, bool isOwner, bool? isBlocked, PrivilegeLevel? privilegeLevel) => null;

  @override
  List<String>? retrieveAllPackageConditions() => null;

  @override
  List<MemberCollectionInfo> getMemberCollectionInfo() => [];

  @override
  Future<void> init() async {
    ComponentRegistry().init();

    AbstractRepositorySingleton.singleton = RepositorySingleton();

    // register style families
    StyleRegistry.registry().registerStyleFamily(MonaStyleFamily.instance());
  }

  @override
  List<Object?> get props => [];
}
