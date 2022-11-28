import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class EntreAquiButton extends StatelessWidget {
  const EntreAquiButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 46,
      child: ElevatedButton(
        style: const ButtonStyle(
            alignment: Alignment.center,
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                side: BorderSide(color: Color.fromRGBO(117, 54, 175, 1)),
                borderRadius: BorderRadius.all(Radius.circular(5)))),
            elevation: MaterialStatePropertyAll(0)),
        onPressed: () => context.read<AuthPageBloc>().add(MudarTela(novaTela: "Login")),
        child: const Text("Já tem uma conta? Entre aqui",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromRGBO(117, 54, 175, 1))),
      ),
    );
  }
}
