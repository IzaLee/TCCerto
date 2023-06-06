import 'package:flutter/material.dart';
import 'package:tccerto/constants/app_style.dart';
import 'package:tccerto/widget/buttons_widget.dart';
import 'package:tccerto/widget/date_widget.dart';
import 'package:tccerto/widget/radio_widget.dart';
import 'package:tccerto/widget/radio_widget2.dart';
import 'package:tccerto/widget/radio_widget3.dart';
import 'package:tccerto/widget/textfield_widget.dart';
import 'package:tccerto/widget/time_widget.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Project Template',
    theme: ThemeData(),
    home: const HomePage(),
  ),
  );
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const ListTile(
          leading: CircleAvatar(
          ),
          title: Text('Olá, Eu sou', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
          subtitle: const Text('Maria Souza', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.calendar_month),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.add_alert),
                ),
              ],),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('TCCerto',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                    ),),
                    Text('Terça-Feira, 06 Junho',
                    style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1.5,
                  color: Colors.grey.shade50,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD5E8FA),
                    foregroundColor: Colors.blue.shade700,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                    onPressed: () => showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                      ),
                      context: context,
                      builder: (context) => Container(
                        padding: const EdgeInsets.all(30),
                        height: MediaQuery.of(context).size.height * 1.80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                                'TCCERTO',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 1.2,

                          ),
                         const Text(
                           'Tirulo da Tarefa',
                          style: AppStyle.headingOne,
                          ),
                           TextFieldWidget(maxLine: 1, hintText: 'Adicione aqui o nome da Tarefa'),
                            const Text('Descrição', style: AppStyle.headingOne,),
                            const TextFieldWidget(maxLine: 5, hintText: 'Adicione qui uma descrição'),
                            const Text('Categoria', style: AppStyle.headingOne),
                            const RadioWidget(),
                            const RadioWidget2(),
                            const RadioWidget3(),
                        //data e Hora
                            const DateWidget(),
                            const TimeWidget(),
                            //adicionar botão de salvar e cancelar aqui
                            const ButtonsWidget(),
                        ],),
                      ),
                    ),
                    child: const Text('+ Nova tarefa',
                    ),
                ),
              ],
            ),
            // Cards de tarefas em andamento
            Container(
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
            Divider(
              thickness: 1.5,
              color: Colors.grey.shade50,
            ),
            Container(
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
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
                          title: Text('Ir para faculdade'),
                          subtitle: Text('Marcar reunião com o Orientador'),
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
                                  color: Colors.orange.shade200,
                                ),
                                Row(
                                  children: [
                                    Text('Segunda-Feira'),
                                    Text('11:10PM - 20:45PM')
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
            Divider(
              thickness: 1.5,
              color: Colors.grey.shade50,
            ),
            Container(
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
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
                                  title: Text('Fazer pesquisas paro TCC'),
                                  subtitle: Text('Fazer pesquisas sobre o tema'),
                                  value: true, // Define o estado inicial do checkbox como marcado
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
                                  color: Colors.green.shade200,
                                ),
                                Row(
                                  children: [
                                    Text('Sexta-Feira'),
                                    Text('05:10PM - 16:50PM')
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
            Divider(
              thickness: 1.5,
              color: Colors.grey.shade50,
            ),
            Container(
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
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
                          title: Text('Pesquisar Tema para TCC'),
                          subtitle: Text('Ver ideias de tema para fazer TCC'),
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
                                  color: Colors.yellow.shade200,
                                ),
                                Row(
                                  children: [
                                    Text('Sabádo'),
                                    Text('08:10PM - 23:00PM')
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


          ],),
        ),
      ),
    );
  }
}
