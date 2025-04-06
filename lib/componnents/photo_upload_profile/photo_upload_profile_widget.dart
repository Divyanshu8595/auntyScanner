import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'photo_upload_profile_model.dart';
export 'photo_upload_profile_model.dart';

class PhotoUploadProfileWidget extends StatefulWidget {
  const PhotoUploadProfileWidget({
    super.key,
    this.imageInitialValue,
  });

  final String? imageInitialValue;

  @override
  State<PhotoUploadProfileWidget> createState() =>
      _PhotoUploadProfileWidgetState();
}

class _PhotoUploadProfileWidgetState extends State<PhotoUploadProfileWidget> {
  late PhotoUploadProfileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhotoUploadProfileModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.imageInitialValue != null &&
          widget.imageInitialValue != '') {
        _model.updatePage(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 120.0,
      child: Stack(
        alignment: AlignmentDirectional(0.0, 0.0),
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: ClipOval(
              child: Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).greyG300,
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    children: [
                      if (_model.isDataUploading1)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/image-placeholder-icon-5.jpeg',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      if (_model.image1 == null || _model.image1 == '')
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/user-default.png',
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (_model.image1 == null || _model.image1 == '')
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 100.0,
                  borderWidth: 1.0,
                  buttonSize: 32.0,
                  fillColor: FlutterFlowTheme.of(context).greyG500,
                  icon: Icon(
                    FFIcons.kcameraDefault,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 16.0,
                  ),
                  onPressed: () async {
                    final selectedMedia =
                        await selectMediaWithSourceBottomSheet(
                      context: context,
                      maxWidth: 800.00,
                      imageQuality: 80,
                      allowPhoto: true,
                    );
                    if (selectedMedia != null &&
                        selectedMedia.every((m) =>
                            validateFileFormat(m.storagePath, context))) {
                      safeSetState(() => _model.isDataUploading1 = true);
                      var selectedUploadedFiles = <FFUploadedFile>[];

                      try {
                        selectedUploadedFiles = selectedMedia
                            .map((m) => FFUploadedFile(
                                  name: m.storagePath.split('/').last,
                                  bytes: m.bytes,
                                  height: m.dimensions?.height,
                                  width: m.dimensions?.width,
                                  blurHash: m.blurHash,
                                ))
                            .toList();
                      } finally {
                        _model.isDataUploading1 = false;
                      }
                      if (selectedUploadedFiles.length ==
                          selectedMedia.length) {
                        safeSetState(() {
                          _model.uploadedLocalFile1 =
                              selectedUploadedFiles.first;
                        });
                      } else {
                        safeSetState(() {});
                        return;
                      }
                    }

                    if ((_model.uploadedLocalFile1.bytes?.isNotEmpty ??
                            false)) {
                      _model.image1 = _model.image1;
                      _model.updatePage(() {});
                      safeSetState(() {
                        _model.isDataUploading1 = false;
                        _model.uploadedLocalFile1 =
                            FFUploadedFile(bytes: Uint8List.fromList([]));
                      });
                    }
                  },
                ),
            ].divide(SizedBox(width: 5.0)),
          ),
          if (_model.image1 != null && _model.image1 != '')
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: ClipOval(
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).greyG300,
                        ),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Stack(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: CachedNetworkImage(
                                fadeInDuration: Duration(milliseconds: 500),
                                fadeOutDuration: Duration(milliseconds: 500),
                                imageUrl: _model.image1!,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.67, 0.7),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 100.0,
                                borderWidth: 1.0,
                                buttonSize: 32.0,
                                fillColor:
                                    FlutterFlowTheme.of(context).greyG500,
                                icon: Icon(
                                  FFIcons.kpen02,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 16.0,
                                ),
                                onPressed: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    maxWidth: 800.00,
                                    imageQuality: 80,
                                    allowPhoto: true,
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    safeSetState(
                                        () => _model.isDataUploading2 = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    try {
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                              ))
                                          .toList();
                                    } finally {
                                      _model.isDataUploading2 = false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                        selectedMedia.length) {
                                      safeSetState(() {
                                        _model.uploadedLocalFile2 =
                                            selectedUploadedFiles.first;
                                      });
                                    } else {
                                      safeSetState(() {});
                                      return;
                                    }
                                  }

                                  if ((_model.uploadedLocalFile2.bytes
                                              ?.isNotEmpty ??
                                          false)) {
                                    _model.image1 = '';
                                    _model.updatePage(() {});
                                    safeSetState(() {
                                      _model.isDataUploading2 = false;
                                      _model.uploadedLocalFile2 =
                                          FFUploadedFile(
                                              bytes: Uint8List.fromList([]));
                                    });
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(width: 8.0)),
            ),
        ],
      ),
    );
  }
}
