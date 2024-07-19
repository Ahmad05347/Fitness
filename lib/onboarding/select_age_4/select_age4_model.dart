import '/flutter_flow/flutter_flow_util.dart';
import 'select_age4_widget.dart' show SelectAge4Widget;
import 'package:flutter/material.dart';

class SelectAge4Model extends FlutterFlowModel<SelectAge4Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for age widget.
  int? ageValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
