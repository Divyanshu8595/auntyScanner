import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'nav_bar_item_model.dart';
export 'nav_bar_item_model.dart';

class NavBarItemWidget extends StatefulWidget {
  const NavBarItemWidget({
    super.key,
    String? activePage,
    required this.unselectedIcon,
    required this.selectedIcon,
    this.action,
    required this.currentItemName,
    String? title,
  })  : this.activePage = activePage ?? 'Home',
        this.title = title ?? 'TITLE';

  final String activePage;
  final Widget? unselectedIcon;
  final Widget? selectedIcon;
  final Future Function()? action;
  final String? currentItemName;
  final String title;

  @override
  State<NavBarItemWidget> createState() => _NavBarItemWidgetState();
}

class _NavBarItemWidgetState extends State<NavBarItemWidget> {
  late NavBarItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        if (widget.currentItemName != widget.activePage) {
          await widget.action?.call();
        }
      },
      child: Container(
        width: 48.0,
        height: 48.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 35.0,
              color: Color(0x15676E76),
              offset: Offset(
                0.0,
                15.0,
              ),
              spreadRadius: 0.0,
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                if (widget.activePage != widget.currentItemName)
                  widget.unselectedIcon!,
                if (widget.activePage == widget.currentItemName)
                  widget.selectedIcon!,
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Nunito Sans',
                        color: widget.currentItemName == widget.activePage
                            ? FlutterFlowTheme.of(context).secondary
                            : FlutterFlowTheme.of(context).greyG500,
                        fontSize: 10.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
