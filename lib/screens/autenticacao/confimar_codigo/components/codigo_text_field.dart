import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:trade_it/screens/autenticacao/auth_page.dart';
import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class CodigoTextField extends StatelessWidget {
  const CodigoTextField({Key? key}) : super(key: key);

  _buildCustomTextField(BuildContext context, int index) {
    return const Padding(
      padding: EdgeInsetsDirectional.only(end: 13),
      child: SizedBox(
        width: 20,
        child: Divider(
          thickness: 2,
          color: Color.fromRGBO(117, 54, 175, 1),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        bool telefone = state is AuthPageConfirmarCodigoState && state.telefone;
        return Stack(
          alignment: AlignmentDirectional.center,
          children: [
            ListView.builder(
              padding: EdgeInsets.only(left: size.width/2 - 33*4),
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
              return _buildCustomTextField(context, index);
              }),
            SizedBox(
              height: 100,
              width: 20*6 + 12*5,
              child: TextFormField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                  onChanged: (codigo) => context.read<AuthPageBloc>().add(MudarTela(novaTela: telefone ? "ConfirmarT" : "ConfirmarE")),
                style: const TextStyle(fontSize: 25,),
                decoration: const InputDecoration(
                    border: InputBorder.none
                ),
                inputFormatters: [
                  MaskedInputFormatter("#   #   #   #   #   #")
                ],
                controller: codigoCotroller
              ),
            ),
          ],
        );
      }
    );
  }
}
