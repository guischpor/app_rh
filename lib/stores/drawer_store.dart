import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:mobx/mobx.dart';
part 'drawer_store.g.dart';

class DrawerStore = _DrawerStore with _$DrawerStore;

abstract class _DrawerStore with Store {
  @observable
  bool loggedIn = false;

  @action
  Future<void> logout() async {
    try {
      final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
      await _firebaseAuth.signOut();
      //Future<UserCredential> user = FirebaseAuth.instance.currentUser;
      print('Deslogado com sucesso!');
    } catch (e) {
      print(e);
    }
  }
}
