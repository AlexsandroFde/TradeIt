import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class TelefoneTextField extends StatelessWidget {
  const TelefoneTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.cell,
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.done,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (cell) => cell != null && cell.length != 13 ? "Insira um número válido!" : null,
          onChanged: (cell) => context.read<AuthPageBloc>().add(MudarTela(cell: cell)),
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
        );
      }
    );
  }
}
