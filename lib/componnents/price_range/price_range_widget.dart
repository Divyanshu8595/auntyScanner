import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'price_range_model.dart';
export 'price_range_model.dart';

class PriceRangeWidget extends StatefulWidget {
  const PriceRangeWidget({
    super.key,
    String? text,
    this.action,
    required this.activeItem,
  }) : this.text = text ?? 'TITLE';

  final String text;
  final Future Function(String? buttonName)? action;
  final String? activeItem;

  @override
  State<PriceRangeWidget> createState() => _PriceRangeWidgetState();
}

class _PriceRangeWidgetState extends State<PriceRangeWidget> {
  late PriceRangeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PriceRangeModel());

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
        width: 64.0,
        height: 64.0,
        decoration: BoxDecoration(
          color: widget.text == widget.activeItem
              ? FlutterFlowTheme.of(context).secondary
              : FlutterFlowTheme.of(context).primaryBackground,
          shape: BoxShape.circle,
          border: Border.all(
            color: widget.text == widget.activeItem
                ? FlutterFlowTheme.of(context).secondary
                : FlutterFlowTheme.of(context).greyG75,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    fontFamily: 'Nunito Sans',
                    color: widget.text == widget.activeItem
                        ? FlutterFlowTheme.of(context).primaryBackground
                        : FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
