import 'package:flutter/material.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  double _cartSumPrice = 0.0;
  double get cartSumPrice => _cartSumPrice;
  set cartSumPrice(double value) {
    _cartSumPrice = value;
  }

  String _userRole = '';
  String get userRole => _userRole;
  set userRole(String value) {
    _userRole = value;
  }

  String _data = '6fcf4778-6c57-4d13-9b4d-095e27238822';
  String get data => _data;
  set data(String value) {
    _data = value;
  }

  int _selectedcat = 0;
  int get selectedcat => _selectedcat;
  set selectedcat(int value) {
    _selectedcat = value;
  }
}
