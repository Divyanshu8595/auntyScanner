import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'pick_how_to_pay_model.dart';
export 'pick_how_to_pay_model.dart';

class PickHowToPayWidget extends StatefulWidget {
  const PickHowToPayWidget({
    super.key,
    String? text,
    this.action,
    required this.activeItem,
    this.icon,
  }) : this.text = text ?? 'TITLE';

  final String text;
  final Future Function(String? buttonName)? action;
  final String? activeItem;
  final Widget? icon;

  @override
  State<PickHowToPayWidget> createState() => _PickHowToPayWidgetState();
}

class _PickHowToPayWidgetState extends State<PickHowToPayWidget> {
  late PickHowToPayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PickHowToPayModel());

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
        await widget.action?.call(
          widget.text,
        );
      },
      child: Container(
        width: double.infinity,
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0.0),
          shape: BoxShape.rectangle,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                widget.icon!,
                Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Nunito Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(SizedBox(width: 16.0)),
            ),
            Stack(
              children: [
                if (widget.text == widget.activeItem ? false : true)
                  Icon(
                    FFIcons.kcircleDefault,
                    color: FlutterFlowTheme.of(context).greyG400,
                    size: 24.0,
                  ),
                if (widget.text != widget.activeItem ? false : true)
                  Icon(
                    FFIcons.ktargetDefault,
                    color: FlutterFlowTheme.of(context).secondary,
                    size: 24.0,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
