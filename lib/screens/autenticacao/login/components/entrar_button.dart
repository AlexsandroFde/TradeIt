import 'package:trade_it/auth_check/bloc.dart';
import 'package:trade_it/screens/autenticacao/autenticacao.dart';

class EntrarButton extends StatefulWidget {
  const EntrarButton({Key? key}) : super(key: key);

  @override
  State<EntrarButton> createState() => _EntrarButtonState();
}

class _EntrarButtonState extends State<EntrarButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      bloc: BlocProvider.of<AuthPageBloc>(context),
      builder: (context, state) {
        return SizedBox(
              width: size.width,
              height: 46,
              child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(state is AuthPageLoginState && state.button ? null : const Color.fromRGBO(117, 54, 175, 0.4)),
                      elevation: const MaterialStatePropertyAll(0)),
                  onPressed: () => signIn(),
                  child: const Text("Entrar",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
            );
      }
    );
  }

  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
    context.read<AuthPageBloc>().add(BuscarUsuario(email: emailController.text, senha: passwordController.text, login: true));
  }
}
