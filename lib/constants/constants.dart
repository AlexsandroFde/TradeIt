import 'package:flutter/material.dart';
import 'package:trade_it/screens/autenticacao/recuperar_senha/recuperar_senha.dart';
import 'package:trade_it/screens/app/favoritos/favoritos.dart';
import 'package:trade_it/screens/app/notificacoes/notificacoes.dart';

//colors

const Color base = Color.fromRGBO(117, 54, 175, 1);
const Color background = Color.fromRGBO(217, 217, 217, 1);

//rotas

Map<String, Widget Function(BuildContext)> rotas = {
  // trocar cada Scaffold pelos StatefulWdgets de cada uma das rotas
  "/Recuperar" : (context) => const RecuperarSenha(),
  "/Anuncios" : (context) => const Scaffold(body: Text("Anúncios")),
  "/Inserir" : (context) => const Scaffold(body: Text("Inserir anúncios")),
  "/Notificacoes" : (context) => const Notificacoes(),
  "/Chat" : (context) => const Scaffold(body: Text("Chat")),
  "/Favoritos" : (context) => const Favoritos(),
  "/Conta" : (context) => const Scaffold(body: Text("Minha conta")),
  "/Pesquisa" : (context) => const Scaffold(body: Text("Pesquisa")),
  "/Categorias" : (context) => const Scaffold(body: Text("Categorias")),
  "/Filtros" : (context) => const Scaffold(body: Text("Filtros")),
  "/Anuncio" : (context) => const Scaffold(body: Text("Anúncio")),
  "/Favorito" :(context) => const Scaffold(body: Text("Favorito")),
  "/Notificacao" : (context) => const Scaffold(body: Text("Notificação")),
};