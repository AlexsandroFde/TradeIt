import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class AvancarButton extends StatelessWidget {
  const AvancarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        return SizedBox(
          width: size.width,
          height: 46,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(state is AuthPageCadastroState && state.button ? null : const Color.fromRGBO(117, 54, 175, 0.4)),
                  elevation: const MaterialStatePropertyAll(0)),
              onPressed: () => state is AuthPageCadastroState && state.button ? context.read<AuthPageBloc>().add(MudarTela(novaTela: "TelefoneEmail")) : null,
              child: const Text("Avançar",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
        );
      }
    );
  }
}
