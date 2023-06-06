import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: [
        ElevatedButton(
          onPressed: () {
            // Lógica do botão Cancelar
          },
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () {
            // Lógica do botão Salvar
          },
          child: const Text('Salvar'),
        ),
      ],
    );
  }
}
