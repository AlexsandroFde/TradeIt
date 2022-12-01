import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class AvancarButtonCS extends StatelessWidget {
  const AvancarButtonCS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future signUp(String email, String senha) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
    context.read<AuthPageBloc>().add(BuscarUsuario(email: email, senha: senha, login: false));
  }

  Size size = MediaQuery.of(context).size;
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        bool button = state.senha.length < 6 || state.senha != state.senhaConfirm;
        bool telefone = state.telefone;
        return SizedBox(
          width: size.width,
          height: 46,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(!button ? null : const Color.fromRGBO(117, 54, 175, 0.4)),
                  elevation: const MaterialStatePropertyAll(0)),
              onPressed: !button ? () => telefone ? null : signUp(state.email, state.senha) : null,
              child: const Text("Avançar",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white))),
        );
      }
    );
  }
}
