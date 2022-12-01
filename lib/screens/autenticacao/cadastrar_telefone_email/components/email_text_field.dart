import 'package:email_validator/email_validator.dart';
import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class EmailTextFieldC extends StatelessWidget {
  const EmailTextFieldC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.email,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (email) => email != null && !EmailValidator.validate(email) ? "Insira um email válido!" : null,
          onChanged: (email) => context.read<AuthPageBloc>().add(MudarTela(email: email)),
          decoration: const InputDecoration(
              hintText: "Digite seu email",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
              )
          ),
        );
      }
    );
  }
}
