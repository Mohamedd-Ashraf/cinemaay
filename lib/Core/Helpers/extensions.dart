import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName) {
    return Navigator.of(this).pushNamed(routeName);
  }

  Future<dynamic> pushReplacementNamed(String routeName) {
    return Navigator.of(this).pushReplacementNamed(routeName);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() {
    return Navigator.of(this).pop();
  }

  void popUntil(String routeName) {
    return Navigator.of(this).popUntil(ModalRoute.withName(routeName));
  }

  showSnackBar(String message) {
    return ScaffoldMessenger.of(this)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
