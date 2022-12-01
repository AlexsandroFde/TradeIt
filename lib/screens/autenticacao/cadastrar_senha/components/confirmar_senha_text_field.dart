import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class ConfirmarSenhaTextFieldCS extends StatelessWidget {
  const ConfirmarSenhaTextFieldCS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        bool obscure1 = state.obscure1;
        bool obscure2 = state.obscure2;
        return TextFormField(
          initialValue: state.senhaConfirm,
          obscureText: obscure2,
          keyboardType: TextInputType.text,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (senhaConfirm) => context.read<AuthPageBloc>().add(MudarTela(senhaConfirm: senhaConfirm)),
          validator: (senha) => senha != null && senha != state.senha ? "As senha devem ser iguais!" : null,
          decoration: InputDecoration(
              hintText: "Confirmar Senha",
              label: const Text("Confirmar Senha", style: TextStyle(fontSize: 16)),
              suffixIcon: IconButton(
                  onPressed: () => context.read<AuthPageBloc>().add(MudarTela(obscure1: obscure1, obscure2: obscure2 ? false : true)),
                  icon: Icon(obscure2 ? Icons.visibility_off_outlined : Icons.visibility_outlined)),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
              ),
          ),
        );
      }
    );
  }
}
