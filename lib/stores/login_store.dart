import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  //constructor
  _LoginStore() {
    autorun((_) {});
  }

  //campo email
  @observable
  String email = "";

  //setar email
  @action
  void setEmail(String value) => email = value;

  //campo password
  @observable
  String password = "";

  //mostra a senha do icone visible
  @observable
  bool passwordVisible = false;

  @action
  void togglePasswordVisibility() => passwordVisible = !passwordVisible;

  //setar campo password
  @action
  void setPassword(String value) => password = value;

  //loading auth login
  @observable
  bool loading = false;

  @observable
  bool loggedIn = false;

  //validação dos campos
  @computed
  bool get isEmailValid => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);

  @computed
  bool get isPasswordValid => password.length >= 6;

  @computed
  Function get loginPressed =>
      (isEmailValid && isPasswordValid && !loading) ? login : null;

  //funcao login
  @action
  Future<void> login() async {
    //habilita o botão entrar
    loading = true;

    //processar o loading
    try {
      Future<UserCredential> user = FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      if (user != null) {
        //desabilita o botao entrar
        loading = false;

        //LOGANDO
        loggedIn = true;

        print("Logado com sucesso");
        print(email);
        print(password);
      }
    } catch (e) {
      print(e);
      print("Usuario ou Senha inválidos");
      // TODO: AlertDialog with error
    }

    //desabilita o botao entrar
    //loading = false;

    //LOGANDO
    //loggedIn = true;

    email = "";
    password = "";
  }
}
