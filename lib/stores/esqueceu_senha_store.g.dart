// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'esqueceu_senha_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EsqueceuSenhaStore on _EsqueceuSenhaStore, Store {
  Computed<bool> _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid,
              name: '_EsqueceuSenhaStore.isEmailValid'))
          .value;
  Computed<Function> _$sendPressedComputed;

  @override
  Function get sendPressed =>
      (_$sendPressedComputed ??= Computed<Function>(() => super.sendPressed,
              name: '_EsqueceuSenhaStore.sendPressed'))
          .value;

  final _$emailAtom = Atom(name: '_EsqueceuSenhaStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$loadingAtom = Atom(name: '_EsqueceuSenhaStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$sendingAtom = Atom(name: '_EsqueceuSenhaStore.sending');

  @override
  bool get sending {
    _$sendingAtom.reportRead();
    return super.sending;
  }

  @override
  set sending(bool value) {
    _$sendingAtom.reportWrite(value, super.sending, () {
      super.sending = value;
    });
  }

  final _$sendAsyncAction = AsyncAction('_EsqueceuSenhaStore.send');

  @override
  Future<void> send() {
    return _$sendAsyncAction.run(() => super.send());
  }

  final _$_EsqueceuSenhaStoreActionController =
      ActionController(name: '_EsqueceuSenhaStore');

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_EsqueceuSenhaStoreActionController.startAction(
        name: '_EsqueceuSenhaStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_EsqueceuSenhaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
loading: ${loading},
sending: ${sending},
isEmailValid: ${isEmailValid},
sendPressed: ${sendPressed}
    ''';
  }
}
