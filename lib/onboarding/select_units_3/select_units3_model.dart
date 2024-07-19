import '/flutter_flow/flutter_flow_util.dart';
import 'select_units3_widget.dart' show SelectUnits3Widget;
import 'package:flutter/material.dart';

class SelectUnits3Model extends FlutterFlowModel<SelectUnits3Widget> {
  ///  Local state fields for this page.

  String? length;

  String? weight;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
