import 'package:equatable/equatable.dart';

class AuthPageState extends Equatable{
  @override
  List<Object?> get props => [];
}

class AuthPageLoadinState extends AuthPageState{}

class AuthPageLoginCadastroState extends AuthPageState{}

class AuthPageLoginState extends AuthPageState{
  final bool button;
  AuthPageLoginState({this.button = false});
}

class AuthPageLoginState2 extends AuthPageState{}

class AuthPageRecuperarSenhaState extends AuthPageState{}

class AuthPageCadastroState extends AuthPageState{}

class AuthPageCadastrarTelefoneEmailState extends AuthPageState{}

class AuthPageConfirmarCodigoState extends AuthPageState{}

class AuthPageCadastrarSenhaState extends AuthPageState{}

class AuthPageHomeState extends AuthPageState{}