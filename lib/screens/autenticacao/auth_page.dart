import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';
import 'package:trade_it/screens/autenticacao/cadastrar_senha/cadastrar_senha.dart';
import 'package:trade_it/screens/autenticacao/cadastrar_telefone_email/cadastrar_telefone_email.dart';
import 'package:trade_it/screens/autenticacao/confimar_codigo/confirmar_codigo.dart';
import 'package:trade_it/screens/autenticacao/login_cadastro/login_cadastro.dart';
import 'package:trade_it/screens/app/home/home.dart';
import 'package:trade_it/screens/autenticacao/cadastro/cadastro.dart';
import 'package:trade_it/screens/autenticacao/login/login.dart';
import 'package:trade_it/screens/autenticacao/recuperar_senha/recuperar_senha.dart';
export 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<AuthPageBloc, AuthPageState>(
        bloc: BlocProvider.of<AuthPageBloc>(context),
        builder: (context, state) {
          if (state is AuthPageHomeState) {
            return const Home();
          }
          else{
            switch (state.tela){
              case "LoginCadastro": return const LoginCadastro();
              case "Login": return const Login();
              case "Recuperar": return const RecuperarSenha();
              case "Cadastro": return const Cadastro();
              case "TelefoneEmail": return const CadastrarTelefoneEmail();
              case "Codigo": return const ConfirmarCodigo();
              case "Senha": return const CadastrarSenha();
              default: return const Center(child: CircularProgressIndicator());
            }
          }
        }
      ),
    );
  }
}