import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trade_it/screens/autenticacao/bloc/auth_page_events.dart';
import 'package:trade_it/screens/autenticacao/bloc/auth_page_state.dart';
import 'package:trade_it/main.dart';
import 'package:trade_it/models/utils.dart';
import 'package:trade_it/screens/autenticacao/auth_page.dart';

class AuthPageBloc extends Bloc<AuthPageEvent, AuthPageState>{
  AuthPageBloc(AuthPageState initialState) : super(AuthPageLoadinState()){
    on<BuscarUsuario>(_onBuscarUsuario);
    on<MudarTela>(_onMudarTela);
    on<Deslogar>(_onDeslogar);
  }

  _onBuscarUsuario(event, emit) async{
    FocusManager.instance.primaryFocus?.unfocus();
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
        return emit(const AuthPageState());
      }
      emit(AuthPageHomeState());
    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar(e.message);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  _onMudarTela(MudarTela event, Emitter<AuthPageState> emit) {
    emit(state.copyWith(
      telefone: event.telefone,
      obscure1: event.obscure1,
      obscure2: event.obscure2,
      email: event.email,
      senha: event.senha,
      senhaConfirm: event.senhaConfirm,
      nome: event.nome,
      sobrenome: event.sobrenome,
      cell: event.cell,
      codigo: event.codigo,
      tela: event.tela,
    ));
  }

  _onDeslogar(event,emit)async{
    await FirebaseAuth.instance.signOut();
    add(BuscarUsuario());
  }
}