import 'package:email_validator/email_validator.dart';
import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class AvancarButtonTE extends StatelessWidget {
  const AvancarButtonTE ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        bool telefone = state.telefone;
        bool button = telefone ? state.cell.length != 13 : state.email.isEmpty || !EmailValidator.validate(state.email);
        return SizedBox(
          width: size.width,
          height: 46,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(!button ? null : const Color.fromRGBO(117, 54, 175, 0.4)),
                  elevation: const MaterialStatePropertyAll(0)),
              onPressed: () => !button ? context.read<AuthPageBloc>().add(MudarTela(tela: "Codigo")): null,
              child: const Text("Avançar",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
        );
      }
    )
    ;
  }
}
