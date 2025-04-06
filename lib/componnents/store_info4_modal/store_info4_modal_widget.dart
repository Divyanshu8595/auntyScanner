import '/componnents/divider/divider_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'store_info4_modal_model.dart';
export 'store_info4_modal_model.dart';

class StoreInfo4ModalWidget extends StatefulWidget {
  const StoreInfo4ModalWidget({super.key});

  @override
  State<StoreInfo4ModalWidget> createState() => _StoreInfo4ModalWidgetState();
}

class _StoreInfo4ModalWidgetState extends State<StoreInfo4ModalWidget> {
  late StoreInfo4ModalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StoreInfo4ModalModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).greyG200,
                      icon: Icon(
                        FFIcons.kx,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  child: ListTile(
                    leading: Icon(
                      FFIcons.ksearchDefault,
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 24.0,
                    ),
                    title: Text(
                      'Search this store',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Nunito Sans',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.dividerModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: DividerWidget(
                    hasText: false,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  child: ListTile(
                    leading: Icon(
                      FFIcons.kheartDefault,
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 24.0,
                    ),
                    title: Text(
                      'Add to favourites',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Nunito Sans',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.dividerModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: DividerWidget(
                    hasText: false,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  child: ListTile(
                    leading: Icon(
                      FFIcons.kaddUser,
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 24.0,
                    ),
                    title: Text(
                      'Group order',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Nunito Sans',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.dividerModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: DividerWidget(
                    hasText: false,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  child: ListTile(
                    leading: Icon(
                      FFIcons.kshareIOS,
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 24.0,
                    ),
                    title: Text(
                      'Share',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Nunito Sans',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.dividerModel4,
                  updateCallback: () => safeSetState(() {}),
                  child: DividerWidget(
                    hasText: false,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  child: ListTile(
                    leading: Icon(
                      FFIcons.kinfoDefault,
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 24.0,
                    ),
                    title: Text(
                      'Store info',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Nunito Sans',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    subtitle: Text(
                      'Address, ratings and more',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Nunito Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.dividerModel5,
                  updateCallback: () => safeSetState(() {}),
                  child: DividerWidget(
                    hasText: false,
                  ),
                ),
              ),
            ]
                .divide(SizedBox(height: 8.0))
                .addToStart(SizedBox(height: 16.0))
                .addToEnd(SizedBox(height: 16.0)),
          ),
        ),
      ],
    );
  }
}
