import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trade_it/data/data.dart';
import 'package:trade_it/models/anuncio.dart';

class ListaAnuncios extends StatelessWidget {
  const ListaAnuncios({Key? key}) : super(key: key);

  _buildAnuncios(BuildContext context, int index) {
    Anuncio lista = anuncios[index];
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        lista.banner ?  CarouselSlider(
            items: [
              Padding(
                padding: const EdgeInsets.fromLTRB(6, 10, 6, 10),
                child: Container(
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            color: Colors.black26
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(26.0)),
                      image: DecorationImage(image: AssetImage("assets/images/banner.jpg"),
                          fit: BoxFit.fill
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(6, 10, 6, 10),
                child: Container(
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            color: Colors.black26
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(26.0)),
                      image: DecorationImage(image: AssetImage("assets/images/banner2.jpg"),
                          fit: BoxFit.fill
                      )),
                ),
              ),
            ],
            options: CarouselOptions(
                height: ((size.width)*430)/695,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1,
                autoPlayInterval: const Duration(seconds: 7)
            )) : const SizedBox(),
        Padding(
          padding: const EdgeInsets.fromLTRB(6, 5, 6, 5),
          child: MaterialButton(
            onPressed: () => Navigator.pushNamed(context, "/Anuncio"),
            height: 100,
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5.0) ),
            color: Colors.white,
            elevation: 5,
            padding: const EdgeInsets.all(0),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(5),topLeft: Radius.circular(5)),
                      image: DecorationImage(image: AssetImage(lista.imagem),
                          fit: BoxFit.fitWidth
                      )),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(lista.jogo),
                    const Text("Troque com o usuário!",style: TextStyle(fontSize: 11, color: Color.fromRGBO(112, 112, 122, 1))),
                    const SizedBox(height: 30),
                    Text(lista.cidade,style: const TextStyle(fontSize: 11, color: Color.fromRGBO(112, 112, 122, 1)))
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
      ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: anuncios.length,
        itemBuilder: (context, index) {
          return _buildAnuncios(context, index);
        },
      ),
    );
  }
}