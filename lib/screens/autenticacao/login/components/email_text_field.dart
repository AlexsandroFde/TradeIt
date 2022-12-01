import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthPageBloc, AuthPageState>(
        builder: (context, state) {
          return TextFormField(
            initialValue: state.email,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onChanged: (email) => context.read<AuthPageBloc>().add(MudarTela(email: email)),
            decoration: const InputDecoration(
                hintText: "Número de telefone, email, ou celular",
                label: Text("Email", style: TextStyle(fontSize: 16)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                )
            ),
          );
        }
    );
  }
}