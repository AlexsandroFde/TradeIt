import 'package:equatable/equatable.dart';

class AuthPageEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

class BuscarUsuario extends AuthPageEvent{
  final String? email;
  final String? senha;
  final bool? login;
  BuscarUsuario({this.email, this.senha, this.login});
}

class MudarTela extends AuthPageEvent{
  final String novaTela;
  final bool obscure1;
  final bool obscure2;
  MudarTela({required this.novaTela, this.obscure1 = true, this.obscure2 = true});
}

class Deslogar extends AuthPageEvent{}