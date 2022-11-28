import 'package:provider/provider.dart';
import 'package:trade_it/auth_check/bloc/auth_page_bloc.dart';
import 'package:trade_it/auth_check/bloc/auth_page_events.dart';
import 'package:trade_it/screens/autenticacao/autenticacao.dart';
import 'package:trade_it/screens/autenticacao/cadastro/components/components.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

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
                          image: DecorationImage(image: AssetImage("assets/images/trade_it.jpg"),
                              fit: BoxFit.fill)
                      ),
                    ),
                    const Text("Cadastre-se",style: TextStyle(
                        color: Color.fromRGBO(117, 54, 175, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                    const SizedBox(height: 30),
                    const NomeTextField(),
                    const SizedBox(height: 15),
                    const SobrenomeTextField(),
                    const SizedBox(height: 15),
                    const AvancarButton(),
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
                    Row(
                      children: const [
                        FacebookCadastroButton(),
                        SizedBox(width: 10),
                        GoogleCadastroButton()
                      ],
                    ),
                    const SizedBox(height: 10),
                    const EntreAquiButton()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future signUp() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
    context.read<AuthPageBloc>().add(BuscarUsuario(email: nomeController.text, senha: sobrenomeController.text, login: false));
  }
}