import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trade_it/screens/autenticacao/bloc/auth_page_bloc.dart';
import 'package:trade_it/screens/autenticacao/bloc/auth_page_events.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return StreamBuilder<Object>(
      stream: null,
      builder: (context, snapshot) {
        return SizedBox(
          width: size.width,
          height: 46,
          child: ElevatedButton(
            onPressed: () => context.read<AuthPageBloc>().add(MudarTela(novaTela: "Login")),
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
              elevation: MaterialStatePropertyAll(0),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              ),),
            child: const Text(
              "Entrar",
              style: TextStyle(
                color: Color.fromRGBO(117, 54, 175, 1),
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
