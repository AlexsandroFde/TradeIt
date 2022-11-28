import 'package:flutter/gestures.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';

import '../../../constants/constants.dart';
import '../bloc/bloc.dart';
final email = TextEditingController();
final telefone = TextEditingController();
bool telefonePress = true;
class CadastrarTelefoneEmail extends StatefulWidget {
  const CadastrarTelefoneEmail({Key? key}) : super(key: key);

  @override
  State<CadastrarTelefoneEmail> createState() => _CadastrarTelefoneEmailState();
}

class _CadastrarTelefoneEmailState extends State<CadastrarTelefoneEmail> {
  bool get button => email.text.isEmpty && telefone.text.isEmpty;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(40, 150, 40, 15),
              children: [
                Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/trade_it_.jpg"),
                              fit: BoxFit.fill)
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              TextButton(onPressed: () {},
                                  style: const ButtonStyle(
                                      splashFactory: NoSplash.splashFactory,
                                      overlayColor: MaterialStatePropertyAll(Colors.transparent)),
                                  child: Text("Telefone", style: TextStyle(color: telefonePress ? const Color.fromRGBO(117, 54, 175, 1) : Colors.black54, fontSize: 16, fontWeight: FontWeight.bold))),
                              Divider(color: telefonePress ? const Color.fromRGBO(117, 54, 175, 1) : Colors.black26, thickness: 1.3),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              TextButton(onPressed: (){
                                setState(() {
                                  telefonePress = false;
                                  telefone.text = "";
                                });
                              },
                                  style: const ButtonStyle(
                                      splashFactory: NoSplash.splashFactory,
                                      overlayColor: MaterialStatePropertyAll(Colors.transparent)),
                                  child: Text("Email", style: TextStyle(color: telefonePress ? Colors.black54 : const Color.fromRGBO(117, 54, 175, 1), fontSize: 16, fontWeight: FontWeight.bold))),
                              Divider(color: telefonePress ? Colors.black26 : const Color.fromRGBO(117, 54, 175, 1), thickness: 1.3),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      keyboardType: telefonePress ? TextInputType.phone : TextInputType.emailAddress,
                      validator: (text){
                        return null;
                      },
                      onChanged: (text) => setState(() {}),
                      decoration: InputDecoration(
                          hintText: telefonePress ? "Digite seu telefone" : "Digite seu email",
                          prefixIcon: telefonePress ? Row(
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
                          ) : null,
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5.0))
                          )
                      ),
                      inputFormatters: telefonePress ?[
                        MaskedInputFormatter("## #####-####")
                      ] : [],
                      controller: telefonePress ? telefone : email,
                    ),
                    const SizedBox(height: 15),
                    Text("Você poderá receber notificações por ${telefonePress ? "SMS" : "email"} para fins de segurança e login.", style: const TextStyle(color: Colors.black54), textAlign: TextAlign.center),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: size.width,
                      height: 46,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(button ? const Color.fromRGBO(117, 54, 175, 0.4) : null),
                              elevation: const MaterialStatePropertyAll(0)),
                          onPressed: () => context.read<AuthPageBloc>().add(MudarTela(novaTela: "Confirmar")),
                          child: const Text("Avançar",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                border: Border.all(
                    style: BorderStyle.solid,
                    color: Colors.black26, width: 0.5)),
            child: Center(
              child: RichText(text: TextSpan(
                  text: "Já tem uma conta?",
                  style: const TextStyle(color: Colors.black54),
                  children: [
                    TextSpan(
                        text: " Entrar", style: const TextStyle(fontWeight: FontWeight.bold, color: base),
                        recognizer: TapGestureRecognizer()..onTap = () => context.read<AuthPageBloc>().add(MudarTela(novaTela: "Login"))
                    )
                  ]
              )),
            ),
          ),
        ],
      ),
    );
  }
}
