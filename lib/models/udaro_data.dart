import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:udaro/models/udaro.dart';

class UdaroData extends ChangeNotifier {
  List<Udaro> _udaro = [];

  UnmodifiableListView<Udaro> get udaro {
    return UnmodifiableListView(_udaro);
  }

  int get udaroLength {
    return _udaro.length;
  }

  void addUdaro({String newUdaroName, String newUdaroAmount, String items}) {
    _udaro.add(Udaro(
        udaroName: newUdaroName, amount: newUdaroAmount, itemsBought: items));
    notifyListeners();
  }

  void removeUdaro(Udaro udaro) {
    _udaro.remove(udaro);
    notifyListeners();
  }
}
