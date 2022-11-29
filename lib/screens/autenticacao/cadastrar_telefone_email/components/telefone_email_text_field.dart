import 'package:email_validator/email_validator.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:trade_it/screens/autenticacao/auth_page.dart';
import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class TelefoneEmailTextField extends StatelessWidget {
  const TelefoneEmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        bool telefone = state is AuthPageCadastrarTelefoneEmailState && state.telefone;
          return telefone ? TextFormField(
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.done,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (telefone) => telefone != null && telefone.length != 13 ? "Insira um número válido!" : null,
            onChanged: (telefone) => context.read<AuthPageBloc>().add(MudarTela(novaTela: "Telefone")),
            decoration: InputDecoration(
                hintText: "Digite seu telefone",
                prefixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    SizedBox(width: 10),
                    Text("BR +55", style:
                    TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold, fontSize: 15)),
                    SizedBox(
                        height: 26,
                        child: VerticalDivider(color: Colors.black54, thickness: 1.3,))
                  ],
                ),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                )
            ),
            inputFormatters: [
              MaskedInputFormatter("## #####-####")
            ],
            controller: cellController,
          )
              :
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (email) => email != null && !EmailValidator.validate(email) ? "Insira um email válido!" : null,
            onChanged: (email) => context.read<AuthPageBloc>().add(MudarTela(novaTela: "Email")),
            decoration: const InputDecoration(
                hintText: "Digite seu email",
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
