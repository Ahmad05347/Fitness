import 'package:flutter/material.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
