import '/componnents/divider/divider_widget.dart';
import '/componnents/header/header_widget.dart';
import '/componnents/photo_upload_profile/photo_upload_profile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'account_edit_widget.dart' show AccountEditWidget;
import 'package:flutter/material.dart';

class AccountEditModel extends FlutterFlowModel<AccountEditWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for photoUploadProfile component.
  late PhotoUploadProfileModel photoUploadProfileModel;
  // Model for Divider component.
  late DividerModel dividerModel1;
  // Model for Divider component.
  late DividerModel dividerModel2;
  // Model for Divider component.
  late DividerModel dividerModel3;
  // Model for Divider component.
  late DividerModel dividerModel4;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    photoUploadProfileModel =
        createModel(context, () => PhotoUploadProfileModel());
    dividerModel1 = createModel(context, () => DividerModel());
    dividerModel2 = createModel(context, () => DividerModel());
    dividerModel3 = createModel(context, () => DividerModel());
    dividerModel4 = createModel(context, () => DividerModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    photoUploadProfileModel.dispose();
    dividerModel1.dispose();
    dividerModel2.dispose();
    dividerModel3.dispose();
    dividerModel4.dispose();
  }
}
