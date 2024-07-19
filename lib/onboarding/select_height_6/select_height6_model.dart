import '/flutter_flow/flutter_flow_util.dart';
import 'select_height6_widget.dart' show SelectHeight6Widget;
import 'package:flutter/material.dart';

class SelectHeight6Model extends FlutterFlowModel<SelectHeight6Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for height widget.
  int? heightValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
