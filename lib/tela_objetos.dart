import 'package:flutter/material.dart';
import 'package:teste/tela_objeto.dart';
import 'tela.dart';

class TelaObjetos extends StatelessWidget {
  final void Function() voltarTelaInicio;

  const TelaObjetos(this.voltarTelaInicio, {super.key});

  @override
  Widget build(BuildContext context) {
    return Tela(
      "Objetos",
      voltarTelaInicio,
      ListBody(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
          ),
          MaterialButton(
            height: 80,
            minWidth: 400,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TelaObjeto("Objeto 1", "LG")),
              );
            },
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Objeto 1',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Colors.white,
                          fontSize: 20)),
                  Text('- Fabricante: LG',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Color.fromARGB(255, 177, 177, 177),
                          fontSize: 10)),
                ],
              ),
            ),
          ),
          MaterialButton(
            height: 80,
            minWidth: 400,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const TelaObjeto("Objeto 2", "SAMSUNG")),
              );
            },
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Objeto 2',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Colors.white,
                          fontSize: 20)),
                  Text('- Fabricante: SAMSUNG',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Color.fromARGB(255, 177, 177, 177),
                          fontSize: 10)),
                ],
              ),
            ),
          ),
          MaterialButton(
            height: 80,
            minWidth: 400,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const TelaObjeto("Objeto 3", "Motorola")),
              );
            },
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Objeto 3',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Colors.white,
                          fontSize: 20)),
                  Text('- Fabricante: Motorola',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Color.fromARGB(255, 177, 177, 177),
                          fontSize: 10)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
