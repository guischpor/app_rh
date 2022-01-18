import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class BuildCardProfile extends StatelessWidget {
  final AssetImage image;
  final String nome;
  final String profissao;

  final String email;
  final String phone;
  final String cel;

  final String rua;
  final String bairro;
  final String cidade;
  final String estado;

  final String empresa;
  final String setor;
  final String cargo;
  final String matricula;

  BuildCardProfile({
    required this.image,
    required this.nome,
    required this.profissao,
    required this.email,
    required this.phone,
    required this.cel,
    required this.rua,
    required this.bairro,
    required this.cidade,
    required this.estado,
    required this.empresa,
    required this.setor,
    required this.cargo,
    required this.matricula,
  });
  final styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 200,
            width: 400,
            child: Card(
              color: styles.iconColorBlue,
              elevation: 2.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(80),
                      ),
                      image: DecorationImage(
                        image: image,
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    nome,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    profissao.toUpperCase(),
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 140,
            width: 400,
            child: Card(
              elevation: 2.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.contacts,
                    size: 70,
                    color: styles.iconColorBlue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 80,
                    width: 0.7,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Email: $email",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: styles.textColorGrey),
                      ),
                      Text(
                        "Telefone: $phone",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: styles.textColorGrey),
                      ),
                      Text(
                        "Celular: $cel",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: styles.textColorGrey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 140,
            width: 400,
            child: Card(
              elevation: 2.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.home,
                    size: 70,
                    color: styles.iconColorBlue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 80,
                    width: 0.7,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Rua: $rua",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: styles.textColorGrey),
                      ),
                      Text(
                        "Bairro: $bairro",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: styles.textColorGrey),
                      ),
                      Text(
                        "Cidade: $cidade",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: styles.textColorGrey),
                      ),
                      Text(
                        "Estado: $estado",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: styles.textColorGrey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 140,
            width: 400,
            child: Card(
              elevation: 2.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.work,
                    size: 70,
                    color: styles.iconColorBlue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 80,
                    width: 0.7,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Empresa: $empresa",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: styles.textColorGrey),
                      ),
                      Text(
                        "Setor: $setor",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: styles.textColorGrey),
                      ),
                      Text(
                        "Cargo: $cargo",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: styles.textColorGrey),
                      ),
                      Text(
                        "Matrícula: $matricula",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: styles.textColorGrey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
