import 'package:flutter/foundation.dart';

class UserData extends ChangeNotifier {
  String? selectedGender;
  String? lengthUnit;
  String? weightUnit;
  String? selectedHeight;
  String? selectedWeight;
  String? selectedBodyType;

  void updateGender(String gender) {
    selectedGender = gender;
    notifyListeners();
  }

  void updateUnits(String length, String weight) {
    lengthUnit = length;
    weightUnit = weight;
    notifyListeners();
  }

  void updateHeight(String height) {
    selectedHeight = height;
    notifyListeners();
  }

  void updateWeight(String weight) {
    selectedWeight = weight;
    notifyListeners();
  }

  void updateBodyType(String bodyType) {
    selectedBodyType = bodyType;
    notifyListeners();
  }
}
