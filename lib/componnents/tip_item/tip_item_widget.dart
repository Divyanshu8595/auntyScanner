import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tip_item_model.dart';
export 'tip_item_model.dart';

class TipItemWidget extends StatefulWidget {
  const TipItemWidget({
    super.key,
    String? text,
    this.action,
    required this.activeItem,
    this.tip,
  }) : this.text = text ?? 'TITLE';

  final String text;
  final Future Function(String? buttonName)? action;
  final String? activeItem;
  final String? tip;

  @override
  State<TipItemWidget> createState() => _TipItemWidgetState();
}

class _TipItemWidgetState extends State<TipItemWidget> {
  late TipItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TipItemModel());

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
        width: 70.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            widget.text == widget.activeItem
                ? FlutterFlowTheme.of(context).secondary
                : FlutterFlowTheme.of(context).greyG75,
            FlutterFlowTheme.of(context).greyG75,
          ),
          borderRadius: BorderRadius.circular(0.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: valueOrDefault<Color>(
              widget.text == widget.activeItem
                  ? FlutterFlowTheme.of(context).secondary
                  : FlutterFlowTheme.of(context).greyG75,
              FlutterFlowTheme.of(context).greyG75,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      widget.text,
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Nunito Sans',
                            color: widget.text == widget.activeItem
                                ? FlutterFlowTheme.of(context).primaryBackground
                                : FlutterFlowTheme.of(context).primaryText,
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.tip!,
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Nunito Sans',
                          color: widget.text == widget.activeItem
                              ? FlutterFlowTheme.of(context).primaryBackground
                              : FlutterFlowTheme.of(context).primaryText,
                          fontSize: 15.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ].divide(SizedBox(height: 2.0)),
          ),
        ),
      ),
    );
  }
}
