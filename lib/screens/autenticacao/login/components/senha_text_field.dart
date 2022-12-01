import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class SenhaTextField extends StatelessWidget {
  const SenhaTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthPageBloc, AuthPageState>(
        builder: (context, state) {
          return TextFormField(
            initialValue: state.senha,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            onChanged: (senha) => context.read<AuthPageBloc>().add(MudarTela(senha: senha)),
            decoration: const InputDecoration(
                hintText: "Senha",
                label: Text("Senha", style: TextStyle(fontSize: 16)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                )
            ),
          );
        }
    );
  }
}