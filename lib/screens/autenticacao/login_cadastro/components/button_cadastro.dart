import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trade_it/auth_check/bloc/auth_page_events.dart';

import '../../../../auth_check/bloc/auth_page_bloc.dart';
import '../../../../auth_check/bloc/auth_page_state.dart';

class ButtonCadastro extends StatefulWidget {
  const ButtonCadastro({Key? key}) : super(key: key);

  @override
  State<ButtonCadastro> createState() => _ButtonCadastroState();
}

class _ButtonCadastroState extends State<ButtonCadastro> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      bloc: BlocProvider.of<AuthPageBloc>(context),
      builder: (context, state) {
        return SizedBox(
          width: size.width,
          height: 46,
          child: ElevatedButton(
          onPressed: () => context.read<AuthPageBloc>().add(MudarTela(novaTela: "Cadastro")),
            style: const ButtonStyle(
              elevation: MaterialStatePropertyAll(0),),
            child: const Text(
              "Criar nova conta",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      }
    );
  }
}
