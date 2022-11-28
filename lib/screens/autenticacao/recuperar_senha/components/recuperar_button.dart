import 'package:firebase_auth/firebase_auth.dart';
import 'package:trade_it/models/utils.dart';
import 'package:trade_it/screens/autenticacao/autenticacao.dart';
import 'package:trade_it/constants/constants.dart';
import 'package:trade_it/main.dart';

class RecuperarButton extends StatefulWidget {
  const RecuperarButton({Key? key}) : super(key: key);

  @override
  State<RecuperarButton> createState() => _RecuperarButtonState();
}

class _RecuperarButtonState extends State<RecuperarButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 46,
      child: ElevatedButton(
          style: const ButtonStyle(
              elevation: MaterialStatePropertyAll(0)),
          onPressed: () => resetPassword(),
          child: const Text(
            "Recuperar senha",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )),
    );
  }

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
}
