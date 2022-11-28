import 'package:flutter/material.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
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
              const Text("Entrar com Facebook",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const Expanded(child: SizedBox())
            ],
          )),
    );
  }
}
