import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
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
              const Text("Entrar com Google",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
              const Expanded(child: SizedBox())
            ],
          )),
    );
  }
}
