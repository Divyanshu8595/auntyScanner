import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'header_icon_plus_model.dart';
export 'header_icon_plus_model.dart';

class HeaderIconPlusWidget extends StatefulWidget {
  const HeaderIconPlusWidget({
    super.key,
    this.title,
    this.iconLeft,
    this.iconRight,
    this.rightIconAction,
  });

  final String? title;
  final Widget? iconLeft;
  final Widget? iconRight;
  final Future Function()? rightIconAction;

  @override
  State<HeaderIconPlusWidget> createState() => _HeaderIconPlusWidgetState();
}

class _HeaderIconPlusWidgetState extends State<HeaderIconPlusWidget> {
  late HeaderIconPlusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderIconPlusModel());

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
      height: 42.0,
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlutterFlowIconButton(
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: widget.iconLeft!,
              onPressed: () async {
                context.safePop();
              },
            ),
            if (widget.title != null && widget.title != '')
              Text(
                widget.title!,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Nunito Sans',
                      letterSpacing: 0.0,
                    ),
              ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: widget.iconRight!,
              onPressed: () async {
                await widget.rightIconAction?.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
