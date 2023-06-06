import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RadioWidget3 extends StatelessWidget {
  const RadioWidget3({
    super.key,
  });




  @override
  Widget build(BuildContext context) {
    return Material(
      child: Theme(
        data: ThemeData(unselectedWidgetColor: Colors.green),

        child: RadioListTile(
          contentPadding: EdgeInsets.zero,
          title: Transform.translate(
            offset: const Offset(-22, 0), child: const Text('Baixo', style: TextStyle(
              color: Colors.yellow, fontWeight: FontWeight.w700
          ),
          ),
          ),
          value: 3,
          groupValue: 0,
          onChanged: (value) {
            print('Clique');
          },
        ),

      ),
    );
  }
}
