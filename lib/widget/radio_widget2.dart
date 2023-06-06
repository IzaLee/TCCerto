import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RadioWidget2 extends StatelessWidget {
  const RadioWidget2({
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
            offset: const Offset(-22, 0), child: const Text('Médio', style: TextStyle(
              color: Colors.orange, fontWeight: FontWeight.w700
          ),
          ),
          ),
          value: 2,
          groupValue: 0,
          onChanged: (value) {
            print('Clique');
          },
        ),

      ),
    );
  }
}
