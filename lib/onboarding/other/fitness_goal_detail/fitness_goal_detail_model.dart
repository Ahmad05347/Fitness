import '/flutter_flow/flutter_flow_util.dart';
import 'fitness_goal_detail_widget.dart' show FitnessGoalDetailWidget;
import 'package:flutter/material.dart';

class FitnessGoalDetailModel extends FlutterFlowModel<FitnessGoalDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
