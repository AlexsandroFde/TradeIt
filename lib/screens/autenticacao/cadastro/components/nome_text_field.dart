import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class NomeTextField extends StatelessWidget {
  const NomeTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.nome,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          onChanged: (nome) => context.read<AuthPageBloc>().add(MudarTela(nome: nome)),
          decoration: const InputDecoration(
              hintText: "Nome",
              label: Text("Nome", style: TextStyle(fontSize: 16)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
              )
          ),
        );
      }
    );
  }
}
