import '/componnents/nav_bar/nav_bar_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'browse_model.dart';
export 'browse_model.dart';

class BrowseWidget extends StatefulWidget {
  const BrowseWidget({super.key});

  static String routeName = 'Browse';
  static String routePath = '/browse';

  @override
  State<BrowseWidget> createState() => _BrowseWidgetState();
}

class _BrowseWidgetState extends State<BrowseWidget> {
  late BrowseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BrowseModel());

    _model.searchTextFieldTextController ??= TextEditingController();
    _model.searchTextFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              alignment: AlignmentDirectional(1.0, -1.0),
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).greyG200,
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .greyG200,
                                            icon: Icon(
                                              FFIcons.ksearchDefault,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                              controller: _model
                                                  .searchTextFieldTextController,
                                              focusNode: _model
                                                  .searchTextFieldFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.searchTextFieldTextController',
                                                Duration(milliseconds: 200),
                                                () => safeSetState(() {}),
                                              ),
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nunito Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText:
                                                    'Food, groceries, drinks, etc.',
                                                hintStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .inkLight,
                                                      letterSpacing: 0.0,
                                                    ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Nunito Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                  ),
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              validator: _model
                                                  .searchTextFieldTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          if (_model.searchTextFieldTextController
                                                      .text !=
                                                  '')
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 20.0,
                                              borderWidth: 1.0,
                                              buttonSize: 30.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .greyG400,
                                              icon: Icon(
                                                FFIcons.kx,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                size: 14.0,
                                              ),
                                              onPressed: () async {
                                                safeSetState(() {
                                                  _model
                                                      .searchTextFieldTextController
                                                      ?.clear();
                                                });
                                              },
                                            ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 4.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'Top Categories',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Nunito Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 24.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: GridView(
                                padding: EdgeInsets.fromLTRB(
                                  0,
                                  24.0,
                                  0,
                                  0,
                                ),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 12.0,
                                  mainAxisSpacing: 14.0,
                                  childAspectRatio: 1.0,
                                ),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      height: 140.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .greyG60,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(6.0),
                                              topRight: Radius.circular(6.0),
                                            ),
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                                  Duration(milliseconds: 500),
                                              fadeOutDuration:
                                                  Duration(milliseconds: 500),
                                              imageUrl:
                                                  'data:image/jpeg;base64,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',
                                              width: double.infinity,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Daily Order',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 17.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 16.0, 0.0),
                                    child: Container(
                                      height: 140.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .greyG60,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(6.0),
                                              topRight: Radius.circular(6.0),
                                            ),
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                                  Duration(milliseconds: 500),
                                              fadeOutDuration:
                                                  Duration(milliseconds: 500),
                                              imageUrl:
                                                  'https://images.unsplash.com/photo-1513104890138-7c749659a591?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxwaXp6YXxlbnwwfHx8fDE3MTAwMTgyNDd8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                              width: double.infinity,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Good food',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 17.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .greyG60,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(6.0),
                                              topRight: Radius.circular(6.0),
                                            ),
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                                  Duration(milliseconds: 500),
                                              fadeOutDuration:
                                                  Duration(milliseconds: 500),
                                              imageUrl:
                                                  'https://images.unsplash.com/photo-1632203171982-cc0df6e9ceb4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxmYXN0Zm9vZHxlbnwwfHx8fDE3MTIzMDc0NTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                              width: double.infinity,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Diet',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 17.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 16.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .greyG60,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(6.0),
                                              topRight: Radius.circular(6.0),
                                            ),
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                                  Duration(milliseconds: 500),
                                              fadeOutDuration:
                                                  Duration(milliseconds: 500),
                                              imageUrl:
                                                  'https://images.unsplash.com/photo-1620646146961-fb8c077b6b61?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw5fHxmYXN0Zm9vZHxlbnwwfHx8fDE3MTIzMDc0NTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                              width: double.infinity,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Weekly Planner',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 17.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .greyG60,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(6.0),
                                              topRight: Radius.circular(6.0),
                                            ),
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                                  Duration(milliseconds: 500),
                                              fadeOutDuration:
                                                  Duration(milliseconds: 500),
                                              imageUrl:
                                                  'https://images.unsplash.com/photo-1609167830220-7164aa360951?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMXx8ZmFzdGZvb2R8ZW58MHx8fHwxNzEyMzA3NDUxfDA&ixlib=rb-4.0.3&q=80&w=1080',
                                              width: double.infinity,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Month Goal',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 17.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 16.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .greyG60,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(6.0),
                                              topRight: Radius.circular(6.0),
                                            ),
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                                  Duration(milliseconds: 500),
                                              fadeOutDuration:
                                                  Duration(milliseconds: 500),
                                              imageUrl:
                                                  'https://images.unsplash.com/photo-1601369791117-e473fc0da14d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNXx8ZmFzdGZvb2R8ZW58MHx8fHwxNzEyMzA3NDUxfDA&ixlib=rb-4.0.3&q=80&w=1080',
                                              width: double.infinity,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Ask to Gemini',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 17.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .greyG60,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(6.0),
                                              topRight: Radius.circular(6.0),
                                            ),
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                                  Duration(milliseconds: 500),
                                              fadeOutDuration:
                                                  Duration(milliseconds: 500),
                                              imageUrl:
                                                  'https://images.unsplash.com/photo-1550547660-d9450f859349?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxmYXN0Zm9vZHxlbnwwfHx8fDE3MTIzMDc0NTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                              width: double.infinity,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Healty One',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 17.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 16.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .greyG60,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(6.0),
                                              topRight: Radius.circular(6.0),
                                            ),
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                                  Duration(milliseconds: 500),
                                              fadeOutDuration:
                                                  Duration(milliseconds: 500),
                                              imageUrl:
                                                  'https://images.unsplash.com/photo-1615996001375-c7ef13294436?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxmYXN0Zm9vZHxlbnwwfHx8fDE3MTIzMDc0NTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                              width: double.infinity,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Nearby Aunty',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 17.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      wrapWithModel(
                        model: _model.navBarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: NavBarWidget(
                          activePage: 'Browse',
                        ),
                      ),
                    ]
                        .divide(SizedBox(height: 16.0))
                        .addToStart(SizedBox(height: 24.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 78.0, 8.0, 0.0),
                  child: wrapWithModel(
                    model: _model.navigatorModel,
                    updateCallback: () => safeSetState(() {}),
                    child: NavigatorWidget(
                      expanded: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
