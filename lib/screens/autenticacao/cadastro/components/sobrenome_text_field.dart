import 'package:trade_it/screens/autenticacao/autenticacao.dart';

class SobrenomeTextField extends StatelessWidget {
  const SobrenomeTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.done,
      decoration: const InputDecoration(
          hintText: "Sobrenome",
          label: Text("Sobrenome", style: TextStyle(fontSize: 16)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))
          )
      ),
      controller: sobrenomeController,
    );
  }
}
