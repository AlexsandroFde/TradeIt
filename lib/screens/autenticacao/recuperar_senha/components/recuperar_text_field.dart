import 'package:email_validator/email_validator.dart';
import 'package:trade_it/screens/autenticacao/auth_page.dart';

class RecuperarTextField extends StatelessWidget {
  const RecuperarTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (email) =>
      email != null && !EmailValidator.validate(email) ? 'Insira um email válido!' : null,
      decoration: const InputDecoration(
          hintText: "Digite seu email",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)))),
      controller: emailController,
    );
  }
}
