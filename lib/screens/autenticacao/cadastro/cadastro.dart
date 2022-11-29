import 'package:trade_it/screens/autenticacao/cadastro/components/components.dart';
import 'package:trade_it/screens/autenticacao/auth_page.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

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
                    const AvancarButtonC(),
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
}