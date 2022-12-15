import 'package:flutter/material.dart';
import 'package:trade_it/data/data.dart';
import 'package:trade_it/models/categoria.dart';

class ListaCategorias extends StatelessWidget {
  const ListaCategorias({Key? key}) : super(key: key);

  _buildCategorias(BuildContext context, int index) {
    Categoria lista = categorias[index];
    return MaterialButton(
      onPressed: () {},
      height: 65,
      shape: const Border(bottom: BorderSide(color: Colors.black12)),
      padding: const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(lista.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Text(lista.title, style: const TextStyle(fontSize: 16, color: Colors.black45, fontWeight: FontWeight.w400))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: categorias.length,
        itemBuilder: (context, index) {
          return _buildCategorias(context, index);
        },
      ),
    );
  }
}
