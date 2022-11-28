import 'package:trade_it/screens/autenticacao/autenticacao.dart';
import 'package:trade_it/auth_check/bloc.dart';

class SenhaTextField extends StatelessWidget {
  const SenhaTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        return TextField(
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          onChanged: (senha) => context.read<AuthPageBloc>().add(MudarBotao(email: emailController.text, senha: passwordController.text)),
          decoration: const InputDecoration(
              hintText: "Senha",
              label: Text("Senha", style: TextStyle(fontSize: 16)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
              )
          ),
          controller: passwordController,
        );
      }
    );
  }
}
