//Pages
import 'package:app_rh/screens/contatos_uteis_screens.dart';
import 'package:app_rh/screens/demo_pag_screen.dart';
import 'package:app_rh/screens/envio_doc_screen.dart';
import 'package:app_rh/screens/esqueceu_senha_screen.dart';
import 'package:app_rh/screens/eventos_reunioes_screen.dart';
import 'package:app_rh/screens/ferias_folgas_screen.dart';
import 'package:app_rh/screens/first_screen.dart';
import 'package:app_rh/screens/holerites_emitidos_screen.dart';
import 'package:app_rh/screens/home_screen.dart';
import 'package:app_rh/screens/login_screen.dart';
import 'package:app_rh/screens/marcador_ponto_screen.dart';
import 'package:app_rh/screens/menu_screen.dart';
import 'package:app_rh/screens/meu_perfil_screen.dart';
import 'package:app_rh/screens/meu_ponto_screen.dart';
import 'package:app_rh/screens/minhas_solicit_screen.dart';
import 'package:app_rh/screens/pendencias_screen.dart';
import 'package:app_rh/screens/solicitar_acesso_screen.dart';

//Widgets
import 'package:flutter/material.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => FirstScreen(),
  'login': (BuildContext context) => LoginScreen(),
  'solicitar_acesso': (BuildContext context) => SolicitarAcessoScreen(),
  'esqueceu_senha': (BuildContext context) => EsqueceuSenhaScreen(),
  'home': (BuildContext context) => HomeScreen(),
  'menu_page': (BuildContext context) => MenuScreen(),
  'eventos_reunioes': (BuildContext context) => EventosReunioesScreen(),
  'demo_pagamento': (BuildContext context) => DemoPagamentoScreen(),
  'holerite_emitidos': (BuildContext context) => HoleritesEmitidosScreen(),
  'ferias_folgas': (BuildContext context) => FeriasFolgasScreen(),
  'marcador_ponto': (BuildContext context) => MarcadorPontoScreen(),
  'meu_ponto': (BuildContext context) => MeuPontoScreen(),
  'minhas_solicitacoes': (BuildContext context) => MinhasSolicitScreen(),
  'pendencia': (BuildContext context) => PendenciaScreen(),
  'envio_documentos': (BuildContext context) => EnvioDocScreen(),
  'contatos_uteis': (BuildContext context) => ContatosUteisScreen(),
  'meu_perfil': (BuildContext context) => MeuPerfilScreen(),
};
