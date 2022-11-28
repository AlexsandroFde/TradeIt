import 'package:trade_it/auth_check/bloc.dart';

class AvancarButton extends StatefulWidget {
  const AvancarButton({Key? key}) : super(key: key);

  @override
  State<AvancarButton> createState() => _AvancarButtonState();
}

class _AvancarButtonState extends State<AvancarButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 46,
      child: ElevatedButton(
          style: const ButtonStyle(
              elevation: MaterialStatePropertyAll(0)),
          onPressed: () => context.read<AuthPageBloc>().add(MudarTela(novaTela: "TelefoneEmail")),
          child: const Text("Avançar",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
    );
  }
}
