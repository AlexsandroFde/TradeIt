import 'package:flutter/material.dart';
import 'package:trade_it/data/data.dart';
import 'package:trade_it/models/favorito.dart';

class ListaFavoritos extends StatelessWidget {
  const ListaFavoritos({Key? key}) : super(key: key);

  _buildFavoritos(BuildContext context, int index) {
    Favorito lista = favoritos[index];
    return Padding(
      padding: const EdgeInsets.fromLTRB(6, 5, 6, 5),
      child: MaterialButton(
        onPressed: () {Navigator.pushNamed(context, "/Favorito");},
        height: 100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        color: Colors.white,
        elevation: 5,
        padding: const EdgeInsets.all(0),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(5), topLeft: Radius.circular(5)),
                  image: DecorationImage(image: AssetImage(lista.anuncio.imagem), fit: BoxFit.fill)
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(lista.anuncio.jogo),
                  Text(lista.name, style: const TextStyle(fontSize: 11, color: Color.fromRGBO(112, 112, 122, 1)),),
                  const SizedBox(height: 30,),
                  Row(
                      children: [
                        Text(lista.anuncio.cidade, style: const TextStyle(fontSize: 11, color: Color.fromRGBO(112, 112, 122, 1)),),
                        const Expanded(child: SizedBox()),
                        SizedBox(
                            height: 20,
                            child: IconButton(onPressed: () {}, icon:const Icon(Icons.delete_outline), iconSize: 20,padding: const EdgeInsets.only(right: 5),))
                      ]
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
      ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: favoritos.length,
        itemBuilder: (context, index) {
          return _buildFavoritos(context, index);
        },
      ),
    );
  }
}
