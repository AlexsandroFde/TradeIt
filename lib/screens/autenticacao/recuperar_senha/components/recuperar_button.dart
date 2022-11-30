import 'package:firebase_auth/firebase_auth.dart';
import 'package:trade_it/models/utils.dart';
import 'package:trade_it/constants/constants.dart';
import 'package:trade_it/main.dart';
import 'package:trade_it/screens/autenticacao/auth_page.dart';
import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class RecuperarButton extends StatelessWidget {
  const RecuperarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Future resetPassword() async {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()),
      );
      try {
        await FirebaseAuth.instance.sendPasswordResetEmail(
            email: emailController.text.trim()
        );
        Utils.showSnackBar("Email para redefinição de senha enviado!", color: base);
      } on FirebaseAuthException catch (e) {
        Utils.showSnackBar(e.message);
      }
      navigatorKey.currentState!.popUntil((route) => route.isFirst);
    }

    return BlocBuilder<AuthPageBloc,AuthPageState>(
      builder: (context, state) {
        bool button = state is AuthPageRecuperarSenhaState && state.button;
        return SizedBox(
          width: size.width,
          height: 46,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(button ? null : const Color.fromRGBO(117, 54, 175, 0.4)),
                  elevation: const MaterialStatePropertyAll(0)),
              onPressed: () => button ? resetPassword() : null,
              child: const Text(
                "Recuperar senha",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
        );
      }
    );
  }
}
