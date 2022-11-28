import 'package:trade_it/auth_check/bloc.dart';
import 'package:trade_it/screens/autenticacao/autenticacao.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        return TextField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          onChanged: (email) => context.read<AuthPageBloc>().add(MudarBotao(email: emailController.text, senha: passwordController.text)),
          decoration: const InputDecoration(
              hintText: "Número de telefone, email, ou celular",
              label: Text("Email", style: TextStyle(fontSize: 16)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
              )
          ),
          controller: emailController,
        );
      }
    );
  }
}
