

import 'package:flutter/cupertino.dart';

class CardTodoListWidget extends StatelessWidget {
  const CardTodoListWidget({

});

  @override
  Widget build(BuildContext context){
    return Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CheckboxListTile(
                    title: Text('Fazer Artigo do TCC'),
                    subtitle: Text('Concluir TCC'),
                    value: false, // Define o estado inicial do checkbox como marcado
                    onChanged: (value) => print(value),
                    controlAffinity: ListTileControlAffinity.trailing, // Posiciona o Checkbox à direita
                    contentPadding: EdgeInsets.zero,
                  ),
                  Transform.translate(
                    offset: Offset(0, -12),
                    child: Container(
                      child: Column(
                        children: [
                          Divider(
                            thickness: 1.5,
                            color: Colors.red.shade200,
                          ),
                          Row(
                            children: [
                              Text('Hoje'),
                              Text('01:10PM - 18:45PM')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],),
            ),
          ),
        ],),
      ),
  }
}