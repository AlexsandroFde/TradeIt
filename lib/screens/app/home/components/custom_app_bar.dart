import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:trade_it/constants/constants.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: base,
      actions: [
        IconButton(
          onPressed: () => Navigator.pushNamed(context, "/Notificacoes"),
          icon: const Icon(AntIcons.bellOutlined),
        ),
        IconButton(
          onPressed: () => Navigator.pushNamed(context, "/Pesquisa"),
          icon: const HeroIcon(HeroIcons.magnifyingGlass),
        ),
        IconButton(
          onPressed: () => Navigator.pushNamed(context, "/Favoritos"),
          icon: const Icon(CupertinoIcons.heart),
        )
      ],
    );
  }
}
