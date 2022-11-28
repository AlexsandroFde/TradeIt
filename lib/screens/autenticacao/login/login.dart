import 'package:flutter/gestures.dart';
import 'package:trade_it/auth_check/bloc.dart';
import 'package:trade_it/constants/constants.dart';
import 'package:trade_it/screens/autenticacao/login/components/components.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
    body: Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(40, 80, 40, 15),
            children: [
              Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/trade_it.jpg"),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                  const Text("Login",style: TextStyle(
                      color: base,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
                  const SizedBox(height: 30),
                  const EmailTextField(),
                  const SizedBox(height: 15),
                  const SenhaTextField(),
                  Container(
                    height: 30,
                    alignment:  Alignment.centerRight,
                    child: RichText(text: TextSpan(
                        text: "Esqueceu a senha?",
                        style: const TextStyle(color: base),
                        recognizer: TapGestureRecognizer()..onTap = () => context.read<AuthPageBloc>().add(MudarTela(novaTela: "Recuperar"))
                      )
                    ),
                  ),
                  const SizedBox(height: 10),
                  const EntrarButton(),
                  const SizedBox(height: 20),
                  Stack(
                      children: [
                        const Divider(color: Colors.black26, thickness: 1.3),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: size.width/2 - 50),
                          child: Container(
                              alignment: Alignment.bottomCenter,
                              color: Colors.white,
                              child: const Text("ou", style: TextStyle(color: Colors.black45))),
                        )
                      ]),
                  const SizedBox(height: 20),
                  const FacebookButton(),
                  const SizedBox(height: 10),
                  const GoogleButton(),
                ],
              ),
            ],
          ),
        ),
        const CadastreSe(),
      ],
    ),
  );
  }
}