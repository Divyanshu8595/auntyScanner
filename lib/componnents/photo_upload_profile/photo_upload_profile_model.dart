import '/flutter_flow/flutter_flow_util.dart';
import 'photo_upload_profile_widget.dart' show PhotoUploadProfileWidget;
import 'package:flutter/material.dart';

class PhotoUploadProfileModel
    extends FlutterFlowModel<PhotoUploadProfileWidget> {
  ///  Local state fields for this component.

  String? image1;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
