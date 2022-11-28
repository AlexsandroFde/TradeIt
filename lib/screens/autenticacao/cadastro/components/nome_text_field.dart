import 'package:trade_it/screens/autenticacao/auth_page.dart';
import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class NomeTextField extends StatelessWidget {
  const NomeTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      onChanged: (nome) => context.read<AuthPageBloc>().add(MudarTela(novaTela: "Cadastro")),
      decoration: const InputDecoration(
          hintText: "Nome",
          label: Text("Nome", style: TextStyle(fontSize: 16)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))
          )
      ),
      controller: nomeController,
    );
  }
}
