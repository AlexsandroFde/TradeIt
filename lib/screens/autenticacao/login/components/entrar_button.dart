import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';
import 'package:trade_it/screens/autenticacao/auth_page.dart';

class EntrarButton extends StatelessWidget {
  const EntrarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Future logIn(String email, String senha) async {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()),
      );
      context.read<AuthPageBloc>().add(BuscarUsuario(email: email, senha: senha, login: true));
    }
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        bool button = state.email.isEmpty || state.senha.isEmpty;
        return SizedBox(
              width: size.width,
              height: 46,
              child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(!button ? null : const Color.fromRGBO(117, 54, 175, 0.4)),
                      elevation: const MaterialStatePropertyAll(0)),
                  onPressed: () => !button ? logIn(state.email, state.senha) : null,
                  child: const Text("Entrar",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
            );
      }
    );
  }
}
