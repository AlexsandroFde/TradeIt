import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trade_it/models/favorito.dart';

import '../models/anuncio.dart';
import '../models/barra_lateral.dart';
import '../models/notificacao.dart';

final _anuncios = BarraLateral(
    icon: AntIcons.homeOutlined,
    text: "Anúncios",
    rota: "/Anuncios"
);
final _inserir = BarraLateral(
    icon: CupertinoIcons.pencil,
    text: "Inserir anúncios",
    rota: "/Inserir"
);
final _notificacoes = BarraLateral(
    icon: AntIcons.bellOutlined,
    text: "Notificações",
    rota: "/Notificacoes"
);
final _chat = BarraLateral(
    icon: Icons.chat_outlined,
    text: "Chat",
    rota: "/Chat"
);
final _favoritos = BarraLateral(
    icon: CupertinoIcons.heart,
    text: "Favoritos",
    rota: "/Favoritos"
);
final _conta = BarraLateral(
    icon: Icons.person_outline_rounded,
    text: "Minha conta",
    rota: "/Conta"
);

final List barra = [_anuncios,_inserir,_notificacoes,_chat,_favoritos,_conta];

final _fifa = Anuncio(
    jogo: "FIFA 2015",
    cidade: "São Bernardo do Campos",
    imagem: "assets/images/fifa_15.jpg",
    banner: true
);
final _dsd = Anuncio(
    jogo: "Dead Space Downfall",
    cidade: "Perdizes",
    imagem: "assets/images/dead_space_downfall.jpg",
    banner: false
);
final _dse = Anuncio(
    jogo: "Dead Space Extraction",
    cidade: "Pirapoquinha do Oeste",
    imagem: "assets/images/dead_space_extraction.jpg",
    banner: false
);
final _harvest = Anuncio(
    jogo: "Harvest Moon",
    cidade: "Acre",
    imagem: "assets/images/harvest_moon.jpg",
    banner: false
);
final _gow = Anuncio(
    jogo: "God od War III (2010)",
    cidade: "São Paulo",
    imagem: "assets/images/god_of_war_III.jpg",
    banner: false
);

final List anuncios = [_fifa,_dsd,_dse,_harvest,_gow];

final _360 = Notificacao(
  image: "assets/images/banner.jpg",
  title: "Os melhores de 360!",
  time: "12h"
);

final _ps4 = Notificacao(
    image: "assets/images/banner2.jpg",
    title: "Os melhores FPS de PS4!",
    time: "1 dia"
);

final List notificacoes = [_360, _ps4];

final _favorito1 = Favorito(
    anuncio: _fifa,
    name: "Gleidson Soares"
);

final _favorito2 = Favorito(
    anuncio: _dse,
    name: "Leonte Duarte"
);

final List favoritos = [_favorito1, _favorito2];