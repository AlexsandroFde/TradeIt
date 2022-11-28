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
  MudarTela({required this.novaTela});
}

class Deslogar extends AuthPageEvent{}