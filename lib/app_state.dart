import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

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

  bool _Buscar = false;
  bool get Buscar => _Buscar;
  set Buscar(bool _value) {
    _Buscar = _value;
  }

  dynamic _busqueda;
  dynamic get busqueda => _busqueda;
  set busqueda(dynamic _value) {
    _busqueda = _value;
  }

  List<String> _buscashion = [];
  List<String> get buscashion => _buscashion;
  set buscashion(List<String> _value) {
    _buscashion = _value;
  }

  void addToBuscashion(String _value) {
    _buscashion.add(_value);
  }

  void removeFromBuscashion(String _value) {
    _buscashion.remove(_value);
  }

  void removeAtIndexFromBuscashion(int _index) {
    _buscashion.removeAt(_index);
  }

  void updateBuscashionAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _buscashion[_index] = updateFn(_buscashion[_index]);
  }

  void insertAtIndexInBuscashion(int _index, String _value) {
    _buscashion.insert(_index, _value);
  }
}
