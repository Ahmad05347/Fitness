import '/flutter_flow/flutter_flow_util.dart';
import 'name_and_profile_picture1_widget.dart'
    show NameAndProfilePicture1Widget;
import 'package:flutter/material.dart';

class NameAndProfilePicture1Model
    extends FlutterFlowModel<NameAndProfilePicture1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();
  }
}
