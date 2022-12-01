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
  final bool? telefone;
  final bool? obscure1;
  final bool? obscure2;
  final String? email;
  final String? senha;
  final String? senhaConfirm;
  final String? nome;
  final String? sobrenome;
  final String? cell;
  final String? codigo;
  final String? tela;

  MudarTela({this.telefone,
    this.obscure1,
    this.obscure2,
    this.email,
    this.senha,
    this.senhaConfirm,
    this.nome,
    this.sobrenome,
    this.cell,
    this.codigo,
    this.tela
  });
}

class Deslogar extends AuthPageEvent{}