import 'package:flutter/material.dart';
import 'tela.dart';

class TelaHabilidades extends StatefulWidget {
  const TelaHabilidades({super.key});

  @override
  State<TelaHabilidades> createState() => _TelaHabilidadesState();
}

class _TelaHabilidadesState extends State<TelaHabilidades> {
  final List<bool> _status = <bool>[true, true];

  @override
  Widget build(BuildContext context) {
    return Tela("Habilidades", () {
      Navigator.pop(context);
    },
        ListBody(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Data',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Colors.white,
                          fontSize: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('- Fornece a data corrente [dd/mm/aaaa]',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Color.fromARGB(255, 177, 177, 177),
                              fontSize: 10)),
                      Switch(
                          activeColor: const Color.fromARGB(255, 59, 232, 65),
                          value: _status[0],
                          onChanged: (value) {
                            setState(() {
                              _status[0] = value;
                            });
                          }),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Hora',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Colors.white,
                          fontSize: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('- Fornece o horário atualizado [hh:mm:ss]',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Color.fromARGB(255, 177, 177, 177),
                              fontSize: 10)),
                      Switch(
                          activeColor: const Color.fromARGB(255, 59, 232, 65),
                          value: _status[1],
                          onChanged: (value) {
                            setState(() {
                              _status[1] = value;
                            });
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
