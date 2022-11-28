class AuthPageState{
  List<Object?> get props => [];
}

class AuthPageLoadinState extends AuthPageState{}

class AuthPageLoginCadastroState extends AuthPageState{}

class AuthPageLoginState extends AuthPageState{
  final bool button;
  AuthPageLoginState({this.button = false});
}

class AuthPageRecuperarSenhaState extends AuthPageState{
  final bool button;
  AuthPageRecuperarSenhaState({this.button = false});
}

class AuthPageCadastroState extends AuthPageState{
  final bool button;
  AuthPageCadastroState({this.button = false});
}

class AuthPageCadastrarTelefoneEmailState extends AuthPageState{}

class AuthPageConfirmarCodigoState extends AuthPageState{}

class AuthPageCadastrarSenhaState extends AuthPageState{}

class AuthPageHomeState extends AuthPageState{}