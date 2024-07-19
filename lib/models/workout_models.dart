class WorkoutModels {
  final String image;
  final String mainText;
  final String workoutMain;
  final String requirments;

  WorkoutModels({
    required this.image,
    required this.mainText,
    required this.workoutMain,
    required this.requirments,
  });

  String get _name => mainText;
  String get _image => image;
  String get _secondMain => workoutMain;
  String get _requirments => requirments;
}
