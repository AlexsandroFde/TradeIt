import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:trade_it/constants/constants.dart';
import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class CodigoTextField extends StatelessWidget {
  const CodigoTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        return Center(
          child: SizedBox(
              width: (7.7+20+7.7)*6,
              child: PinInputTextField(
                keyboardType: TextInputType.number,
                onChanged: (codigo) => context.read<AuthPageBloc>().add(MudarTela(codigo: codigo)),
                decoration: const UnderlineDecoration(
                    gapSpace: 15,
                    colorBuilder: FixedColorBuilder(base),
                    textStyle: TextStyle(fontSize: 25, color: Colors.black)),
              ),
            ),
        );
      }
    );
  }
}
