import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  //constructor
  _LoginStore() {
    autorun((_) {});
  }

  //campo matricula
  @observable
  String matricula = "";

  //setar email
  @action
  void setMatricula(String value) => matricula = value;

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
  bool get isMatriculaValid => matricula.length >= 6;

  @computed
  bool get isPasswordValid => password.length >= 6;

  @computed
  Function get loginPressed =>
      (isMatriculaValid && isPasswordValid && !loading) ? login : null;

  //funcao login
  @action
  Future<void> login() async {
    //habilita o botão entrar
    loading = true;

    //processar o loading
    await Future.delayed(Duration(seconds: 3));

    //desabilita o botao entrar
    loading = false;

    //LOGANDO
    loggedIn = true;

    matricula = "";
    password = "";
  }

  //quando der logout
  void logout() {
    loggedIn = false;
  }
}
