import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class EmailButton extends StatelessWidget {
  const EmailButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        bool telefone = state.telefone;
        return Expanded(
          child: Column(
            children: [
              TextButton(onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                context.read<AuthPageBloc>().add(MudarTela(telefone: false));
        },
                  style: const ButtonStyle(
                      splashFactory: NoSplash.splashFactory,
                      overlayColor: MaterialStatePropertyAll(Colors.transparent)),
                  child: Text("Email", style: TextStyle(color: telefone ? Colors.black54 : const Color.fromRGBO(117, 54, 175, 1), fontSize: 16, fontWeight: FontWeight.bold))),
              Divider(color: telefone ? Colors.black26 : const Color.fromRGBO(117, 54, 175, 1), thickness: 1.3),
            ],
          ),
        );
      }
    );
  }
}
