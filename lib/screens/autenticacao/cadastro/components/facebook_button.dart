import 'package:flutter/material.dart';

class FacebookCadastroButton extends StatelessWidget {
  const FacebookCadastroButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 46,
        child: ElevatedButton(
            style: const ButtonStyle(
                alignment: Alignment.center,
                backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(59, 89, 153, 1)),
                elevation: MaterialStatePropertyAll(0)),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Expanded(
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/facebook.jpg"),
                            alignment: Alignment.centerLeft,
                            fit: BoxFit.fitHeight)
                    ),
                  ),
                ),
                const Text("Facebook",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const Expanded(child: SizedBox())
              ],
            )),
      ),
    );
  }
}
