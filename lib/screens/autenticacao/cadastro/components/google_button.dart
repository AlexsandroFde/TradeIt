import 'package:flutter/material.dart';

class GoogleCadastroButton extends StatelessWidget {
  const GoogleCadastroButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 46,
        child: ElevatedButton(
            style: const ButtonStyle(
                alignment: Alignment.center,
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black26),
                    borderRadius: BorderRadius.all(Radius.circular(5)))),
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
                        image: DecorationImage(image: AssetImage("assets/images/google.jpg"),
                            alignment: Alignment.centerLeft,
                            fit: BoxFit.fitHeight)
                    ),
                  ),
                ),
                const Text("Google",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
                const Expanded(child: SizedBox())
              ],
            )),
      ),
    );
  }
}
