import 'package:flutter/material.dart';
import 'package:trade_it/screens/autenticacao/login_cadastro/components/components.dart';

class LoginCadastro extends StatelessWidget {
  const LoginCadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 210, 40, 15),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/trade_it.jpg"))),
            ),
            const SizedBox(
              height: 40,
            ),
            const ButtonCadastro(),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                const Divider(
                  color: Colors.black12,
                  thickness: 1.3,
                ),
                Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: size.width / 2 - 50),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: const Text(
                      "ou",
                      style: TextStyle(
                        color: Colors.black26,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const ButtonLogin()
          ],
        ),
      ),
    );
  }
}