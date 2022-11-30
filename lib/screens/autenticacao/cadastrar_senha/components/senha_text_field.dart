import 'package:trade_it/screens/autenticacao/auth_page.dart';
import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class SenhaTextFieldCS extends StatelessWidget {
  const SenhaTextFieldCS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        bool obscure1 = state is AuthPageCadastrarSenhaState && state.obscure1;
        bool obscure2 = state is AuthPageCadastrarSenhaState && state.obscure2;
        bool telefone = state is AuthPageCadastrarSenhaState && state.telefone;
        return TextFormField(
          obscureText: obscure1,
          keyboardType: TextInputType.text,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (email) => context.read<AuthPageBloc>().add(MudarTela(novaTela: telefone ? "SenhaT" : "SenhaE", obscure1: obscure1, obscure2: obscure2)),
          validator: (senha) => senha != null && senha.length < 6 ? "A senha deve ter pelo menos 6 caracteres!" : null,
          decoration: InputDecoration(
              hintText: "Senha",
              label: const Text("Senha", style: TextStyle(fontSize: 16)),
              suffixIcon: IconButton(
                  onPressed: () => context.read<AuthPageBloc>().add(MudarTela(novaTela: telefone ? "SenhaT" : "SenhaE", obscure1: obscure1 ? false : true, obscure2: obscure2)),
                  icon: Icon(obscure1 ? Icons.visibility_off_outlined : Icons.visibility_outlined)),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
              )
          ),
          controller: passwordController,
        );
      }
    );
  }
}
