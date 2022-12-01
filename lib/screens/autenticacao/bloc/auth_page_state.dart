import 'package:equatable/equatable.dart';

class AuthPageState extends Equatable{
  final bool telefone;
  final bool obscure1;
  final bool obscure2;
  final String email;
  final String senha;
  final String senhaConfirm;
  final String nome;
  final String sobrenome;
  final String cell;
  final String codigo;
  final String tela;

  const AuthPageState({
    this.telefone = true,
    this.obscure1 = true,
    this.obscure2 = true,
    this.email = "",
    this.senha = "",
    this.senhaConfirm = "",
    this.nome = "",
    this.sobrenome = "",
    this.cell = "",
    this.codigo = "",
    this.tela = "LoginCadastro"
  });

  @override
  List<Object?> get props => [telefone, obscure1, obscure2, email, senha, senhaConfirm, nome, sobrenome, cell, codigo, tela];

  AuthPageState copyWith({
    bool? telefone,
    bool? obscure1,
    bool? obscure2,
    String? email,
    String? senha,
    String? senhaConfirm,
    String? nome,
    String? sobrenome,
    String? cell,
    String? codigo,
    String? tela,
  }){
    return AuthPageState(
      telefone: telefone ?? this.telefone,
      obscure1: obscure1 ?? this.obscure1,
      obscure2: obscure2 ?? this.obscure2,
      email: email ?? this.email,
      senha: senha ?? this.senha,
      senhaConfirm: senhaConfirm ?? this.senhaConfirm,
      nome: nome ?? this.nome,
      sobrenome: sobrenome ?? this.sobrenome,
      cell: cell ?? this.cell,
      codigo: codigo ?? this.codigo,
      tela: tela ?? this.tela
    );
  }
}

class AuthPageLoadinState extends AuthPageState{}

class AuthPageLoadedState extends AuthPageState{}

class AuthPageHomeState extends AuthPageState{}