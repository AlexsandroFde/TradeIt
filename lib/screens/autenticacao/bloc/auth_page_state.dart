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

class AuthPageCadastrarTelefoneEmailState extends AuthPageState{
  final bool telefone;
  final bool button;
  AuthPageCadastrarTelefoneEmailState({this.telefone = true, this.button = false});
}

class AuthPageConfirmarCodigoState extends AuthPageState{
  final bool telefone;
  final bool button;
  AuthPageConfirmarCodigoState({this.telefone = true, this.button = false});
}

class AuthPageCadastrarSenhaState extends AuthPageState{
  final bool obscure1;
  final bool obscure2;
  final bool telefone;
  final bool button;
  AuthPageCadastrarSenhaState({this. obscure1 = true, this.obscure2 = true, this.telefone = true, this.button = false});
}

class AuthPageHomeState extends AuthPageState{}