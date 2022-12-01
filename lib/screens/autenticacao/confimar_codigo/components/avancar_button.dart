import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class AvancarButtonCC extends StatelessWidget {
  const AvancarButtonCC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        bool button = state.codigo.length != 21;
        return SizedBox(
          width: size.width,
          height: 46,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(!button ?  null : const Color.fromRGBO(117, 54, 175, 0.4)),
                  elevation: const MaterialStatePropertyAll(0)),
              onPressed: () => !button ? context.read<AuthPageBloc>().add(MudarTela(tela: "Senha")) : null,
              child: const Text("Avançar",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
        );
      }
    );
  }
}
