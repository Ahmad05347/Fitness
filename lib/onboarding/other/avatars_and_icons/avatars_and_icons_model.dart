import '/flutter_flow/flutter_flow_util.dart';
import 'avatars_and_icons_widget.dart' show AvatarsAndIconsWidget;
import 'package:flutter/material.dart';

class AvatarsAndIconsModel extends FlutterFlowModel<AvatarsAndIconsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
