import 'package:flutter/foundation.dart';
import 'package:flutter_look_good_assignment/Config/config.dart';

class CartItemCounter extends ChangeNotifier {
  int _counter =
      EcomApp.sharedPreferences.getStringList(EcomApp.userCartList).length - 1;
  int get count => _counter;

  Future<void> displayResult() async {
    int _counter =
        EcomApp.sharedPreferences.getStringList(EcomApp.userCartList).length -
            1;

    await Future.delayed(const Duration(milliseconds: 100), () {
      notifyListeners();
    });
  }
}
