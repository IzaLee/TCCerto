import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RadioWidget extends StatelessWidget {
  const RadioWidget({
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
            offset: const Offset(-22, 0), child: const Text('Importante', style: TextStyle(
            color: Colors.red, fontWeight: FontWeight.w700
          ),
          ),
          ),
          value: 1,
          groupValue: 1,
          onChanged: (value) {
            print('Clique');
          },
        ),

      ),
    );
    }
  }
