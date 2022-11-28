import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trade_it/auth_check/bloc/auth_page_events.dart';
import 'package:trade_it/auth_check/bloc/auth_page_state.dart';
import 'package:trade_it/main.dart';
import 'package:trade_it/models/utils.dart';

class AuthPageBloc extends Bloc<AuthPageEvent, AuthPageState>{
  AuthPageBloc(AuthPageState initialState) : super(AuthPageLoadinState()){
    on<BuscarUsuario>(_onBuscarUsuario);
    on<MudarTela>(_onMudarTela);
    on<MudarBotao>(_onMudarBotao);
    on<Deslogar>(_onDeslogar);
  }

  _onBuscarUsuario(event, emit) async{
      try {
        if(event.login == true){
          await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: event.email.trim(),
            password: event.senha.trim(),
          );
        }
        else if(event.login == false) {
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: event.email.trim(),
            password: event.senha.trim(),
          );
        }
        else{
          if (FirebaseAuth.instance.currentUser != null){
            return emit(AuthPageHomeState());
          }
          return emit(AuthPageLoginCadastroState());
        }
        emit(AuthPageHomeState());
      } on FirebaseAuthException catch (e) {
        Utils.showSnackBar(e.message);
      }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  _onMudarTela(MudarTela event, emit) {
    switch (event.novaTela){
      case "Login" : return emit(AuthPageLoginState());
      case "Recuperar" : return emit(AuthPageRecuperarSenhaState());
      case "Cadastro" : return emit(AuthPageCadastroState());
      case "TelefoneEmail" : return emit(AuthPageCadastrarTelefoneEmailState());
      case "Confirmar" : return emit(AuthPageConfirmarCodigoState());
      case "Senha" : return emit(AuthPageCadastrarSenhaState());
      default: return emit(AuthPageLoginCadastroState());
    }
  }

  _onMudarBotao(MudarBotao event, emit) {
    event.senha.isEmpty || event.email.isEmpty ? emit(AuthPageLoginState(button: false)) : emit(AuthPageLoginState(button: true));
  }

  _onDeslogar(event,emit)async{
    await FirebaseAuth.instance.signOut();
    emit(AuthPageLoginCadastroState());
  }
}