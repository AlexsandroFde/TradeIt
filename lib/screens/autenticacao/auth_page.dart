import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';
import 'package:trade_it/screens/autenticacao/cadastrar_telefone_email/cadastrar_telefone_email.dart';
import 'package:trade_it/screens/autenticacao/confimar_codigo/confirmar_codigo.dart';
import 'package:trade_it/screens/autenticacao/login_cadastro/login_cadastro.dart';
import 'package:trade_it/screens/app/home/home.dart';
import 'package:trade_it/screens/autenticacao/cadastro/cadastro.dart';
import 'package:trade_it/screens/autenticacao/login/login.dart';
import 'package:trade_it/screens/autenticacao/recuperar_senha/recuperar_senha.dart';
export 'package:flutter/material.dart';

final emailController = TextEditingController();
final cellController = TextEditingController();
final passwordController = TextEditingController();
final nomeController = TextEditingController();
final sobrenomeController = TextEditingController();

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
          else if (state is AuthPageLoginCadastroState){
            return const LoginCadastro();
          }
          else if (state is AuthPageLoginState){
            return const Login();
          }
          else if (state is AuthPageRecuperarSenhaState){
            return const RecuperarSenha();
          }
          else if (state is AuthPageCadastrarTelefoneEmailState){
            return const CadastrarTelefoneEmail();
          }
          else if (state is AuthPageConfirmarCodigoState){
            return const ConfirmarCodigo();
          }
          else if (state is AuthPageCadastroState){
            return const Cadastro();
          }
          else{
            return const Center(child: CircularProgressIndicator());
          }
        }
      ),
    );
  }
}