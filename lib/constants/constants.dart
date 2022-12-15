import 'package:flutter/material.dart';
import 'package:trade_it/screens/app/buscar/buscar.dart';
import 'package:trade_it/screens/app/categorias/categorias.dart';
import 'package:trade_it/screens/app/minha_conta/minhaConta.dart';
import 'package:trade_it/screens/app/favoritos/favoritos.dart';
import 'package:trade_it/screens/app/notificacoes/notificacoes.dart';

//colors

const Color base = Color.fromRGBO(117, 54, 175, 1);
const Color background = Color.fromRGBO(217, 217, 217, 1);

//rotas

Map<String, Widget Function(BuildContext)> rotas = {
  // trocar cada Scaffold pelos StatefulWdgets de cada uma das rotas
  "/Anuncios" : (context) => const Scaffold(body: Text("Anúncios")),
  "/InserirAnuncio" : (context) => const Scaffold(body: Text("Inserir anúncio")),
  "/Notificacoes" : (context) => const Notificacoes(),
  "/Chat" : (context) => const Scaffold(body: Text("Chat")),
  "/Favoritos" : (context) => const Favoritos(),
  "/MinhaConta" : (context) => const MinhaConta(),
  "/Editar" : (context) => const Scaffold(body: Text("Editar")),
  "/MeusAnuncios" : (context) => const Scaffold(body: Text("Meus anúncios")),
  "/MeuPerfil" : (context) => const Scaffold(body: Text("Meu perfil")),
  "/Seguranca" : (context) => const Scaffold(body: Text("Segurança e Privacidade")),
  "/Buscar" : (context) => const Buscar(),
  "/Categorias" : (context) => const Categorias(),
  "/Filtros" : (context) => const Scaffold(body: Text("Filtros")),
  "/Anuncio" : (context) => const Scaffold(body: Text("Anúncio")),
  "/Notificacao" : (context) => const Scaffold(body: Text("Notificação")),
};