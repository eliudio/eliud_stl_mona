import 'package:eliud_core/model/member_model.dart';
import 'package:eliud_core/model/member_public_info_model.dart';
import 'package:eliud_core/model/rgb_model.dart';
import 'package:eliud_core/style/_default/frontend/helper/profile_photo_helper.dart';
import 'package:eliud_core/style/frontend/has_profile_photo.dart';
import 'package:flutter/material.dart';


class MonaProfilePhotoImpl implements HasProfilePhoto {
  @override
  Widget getProfilePhotoButtonFromMember(BuildContext context,
      {MemberModel? member,
        required double radius,
        RgbModel? iconColor,
        VoidCallback? onPressed}) {
    return ProfilePhotoHelper().getProfilePhotoButtonFromMember(context,
        member: member,
        radius: radius,
        iconColor: iconColor,
        onPressed: onPressed);
  }

  @override
  Widget getProfilePhotoButtonFromPublicMember(BuildContext context,
      {MemberPublicInfoModel? member,
        required double radius,
        RgbModel? iconColor,
        VoidCallback? onPressed}) {
    return ProfilePhotoHelper().getProfilePhotoButtonFromPublicMember(context,
        member: member,
        radius: radius,
        iconColor: iconColor,
        onPressed: onPressed);
  }

  @override
  Widget getProfilePhotoButtonFromExternalProvider(BuildContext context,
      {required ExternalProfileURLProvider externalProfileURLProvider,
        BackupProfileURLProvider? fallBackURLProvider,
        required double radius,
        RgbModel? iconColor,
        VoidCallback? onPressed}) {
    return ProfilePhotoHelper().getProfilePhotoButtonFromExternalProvider(
        context,
        externalProfileURLProvider: externalProfileURLProvider,
        fallBackURLProvider: fallBackURLProvider,
        radius: radius,
        iconColor: iconColor,
        onPressed: onPressed);
  }

  @override
  Widget getProfilePhotoButtonFromCurrentMember(BuildContext context,
      {RgbModel? iconColor, required double radius, VoidCallback? onPressed}) {
    return ProfilePhotoHelper().getProfilePhotoButtonFromCurrentMember(context,
        iconColor: iconColor, radius: radius, onPressed: onPressed);
  }

  @override
  Widget getProfilePhotoButtonFromURL(BuildContext context,
      {String? url,
        required double radius,
        RgbModel? iconColor,
        VoidCallback? onPressed}) {
    return ProfilePhotoHelper().getProfilePhotoButtonFromURL(context,
        url: url, radius: radius, iconColor: iconColor, onPressed: onPressed);
  }
}
