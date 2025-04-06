import '/componnents/nav_bar_item/nav_bar_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({
    super.key,
    String? activePage,
  }) : this.activePage = activePage ?? 'Home';

  final String activePage;

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late NavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());

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
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Container(
            width: double.infinity,
            height: 65.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 12.0,
                  color: Color(0x13000000),
                  offset: Offset(
                    0.0,
                    -8.0,
                  ),
                  spreadRadius: 0.0,
                )
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(HomeWidget.routeName);
                  },
                  child: wrapWithModel(
                    model: _model.navBarItemModel1,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: NavBarItemWidget(
                      activePage: widget.activePage,
                      unselectedIcon: Icon(
                        FFIcons.khomeDefault,
                        color: FlutterFlowTheme.of(context).greyG500,
                        size: 32.0,
                      ),
                      selectedIcon: Icon(
                        FFIcons.khomeDefault,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 32.0,
                      ),
                      currentItemName: 'Home',
                      title: 'Home',
                      action: () async {
                        context.goNamed(
                          HomeWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(SearchWidget.routeName);
                  },
                  child: wrapWithModel(
                    model: _model.navBarItemModel2,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: NavBarItemWidget(
                      activePage: widget.activePage,
                      unselectedIcon: Icon(
                        FFIcons.kslideSearch,
                        color: FlutterFlowTheme.of(context).greyG500,
                        size: 32.0,
                      ),
                      selectedIcon: Icon(
                        FFIcons.kslideSearch,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 32.0,
                      ),
                      currentItemName: 'Browse',
                      title: 'Browse',
                      action: () async {
                        context.goNamed(
                          BrowseWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(BasketsWidget.routeName);
                  },
                  child: wrapWithModel(
                    model: _model.navBarItemModel3,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: NavBarItemWidget(
                      activePage: widget.activePage,
                      unselectedIcon: Icon(
                        FFIcons.kshoppingCart01,
                        color: FlutterFlowTheme.of(context).greyG500,
                        size: 32.0,
                      ),
                      selectedIcon: Icon(
                        FFIcons.kshoppingCart01,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 32.0,
                      ),
                      currentItemName: 'Baskets',
                      title: 'Baskets',
                      action: () async {
                        context.goNamed(
                          BasketsWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(AccountDetailsWidget.routeName);
                  },
                  child: wrapWithModel(
                    model: _model.navBarItemModel4,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: NavBarItemWidget(
                      activePage: widget.activePage,
                      unselectedIcon: Icon(
                        FFIcons.kuser,
                        color: FlutterFlowTheme.of(context).greyG500,
                        size: 32.0,
                      ),
                      selectedIcon: Icon(
                        FFIcons.kuser,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 32.0,
                      ),
                      currentItemName: 'Account',
                      title: 'Account',
                      action: () async {
                        context.goNamed(
                          AccountWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
