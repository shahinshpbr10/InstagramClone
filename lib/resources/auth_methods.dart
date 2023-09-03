import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethod {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //signup user
  Future<String> signUpMethod({
    required String email,
    required String password,
    required String bio,
    required Uint8List file,
  }) async {
    String res = 'Some Error Occure';
    try {} catch (err) {
      res = err.toString();
    }
    return res;
  }
}
