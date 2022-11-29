import 'package:email_validator/email_validator.dart';
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
    bool buttonL = emailController.text.isEmpty || passwordController.text.isEmpty;
    bool buttonC = nomeController.text.isEmpty || sobrenomeController.text.isEmpty;
    bool buttonT = cellController.text.length != 13;
    bool buttonE = emailController.text.isEmpty || !EmailValidator.validate(emailController.text);
    switch (event.novaTela){
      case "Login" : return emit(AuthPageLoginState(button: !buttonL));
      case "Recuperar" : return emit(AuthPageRecuperarSenhaState());
      case "Cadastro" : return emit(AuthPageCadastroState(button: !buttonC));
      case "Telefone" : return emit(AuthPageCadastrarTelefoneEmailState(button: !buttonT, telefone: true));
      case "Email" : return emit(AuthPageCadastrarTelefoneEmailState(button: !buttonE, telefone: false));
      case "ConfirmarE" : return emit(AuthPageConfirmarCodigoState());
      case "ConfirmarT" : return emit(AuthPageConfirmarCodigoState());
      case "Senha" : return emit(AuthPageCadastrarSenhaState());
      default: return emit(AuthPageLoginCadastroState());
    }
  }

  _onDeslogar(event,emit)async{
    await FirebaseAuth.instance.signOut();
    emit(AuthPageLoginCadastroState());
  }
}