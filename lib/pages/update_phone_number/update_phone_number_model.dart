import '/backend/schema/structs/index.dart';
import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_phone_number_widget.dart' show UpdatePhoneNumberWidget;
import 'package:flutter/material.dart';

class UpdatePhoneNumberModel extends FlutterFlowModel<UpdatePhoneNumberWidget> {
  ///  Local state fields for this page.

  CountryStruct? selectedCountry;
  void updateSelectedCountryStruct(Function(CountryStruct) updateFn) {
    updateFn(selectedCountry ??= CountryStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for PhoneNumberTextField widget.
  FocusNode? phoneNumberTextFieldFocusNode;
  TextEditingController? phoneNumberTextFieldTextController;
  String? Function(BuildContext, String?)?
      phoneNumberTextFieldTextControllerValidator;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    phoneNumberTextFieldFocusNode?.dispose();
    phoneNumberTextFieldTextController?.dispose();

    navigatorModel.dispose();
  }
}
