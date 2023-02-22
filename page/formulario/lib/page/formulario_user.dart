import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_text_field.dart';

class FormularioUser extends StatelessWidget {
  FormularioUser({super.key});
  final dropValue = ValueNotifier('');
  final itens = ['ServiceDesk', 'Administrador'];
  //variável para o nome do usuário
  final nomeUserController = TextEditingController();
  //variável para a matricula do usuário
  final matriculaUserController = TextEditingController();
  //variável para o email do usuário
  final emailUserController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Adicionar usuário'),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: Column(
            children: [
              const SizedBox(height: 20),
              //componenete para o  nome do usuário
              MyTextField(
                controller: nomeUserController,
                hintText: "Ex: Lucas",
                obscureText: false,
                text: "Nome",
                keyBoardType: TextInputType.text,
                icon: const Icon(Icons.person),
              ),
              const SizedBox(height: 20),
              //componente para a matricula do usuário
              MyTextField(
                controller: matriculaUserController,
                hintText: "Ex: JA3610",
                obscureText: false,
                text: "Matrícula",
                keyBoardType: TextInputType.text,
                icon: const Icon(Icons.pin),
              ),
              const SizedBox(height: 20),
              //componente para o email do usuário
              MyTextField(
                  controller: emailUserController,
                  hintText: "Ex: lucas@malwee.com.br",
                  obscureText: false,
                  text: "E-mail",
                  keyBoardType: TextInputType.emailAddress,
                  icon: const Icon(Icons.mail,)
                    ),
              const SizedBox(height: 20),

              ValueListenableBuilder(
                  valueListenable: dropValue,
                  builder: (BuildContext context, String value, _) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.00),
                      child: DropdownButtonFormField(
                        iconDisabledColor: Colors.blue,
                        iconEnabledColor: Colors.blue,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          labelText: "Permissão",
                          labelStyle: const TextStyle(color: Colors.blue),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                        hint: const Text("Permissão: "),
                        isExpanded: true,
                        value: (value.isEmpty) ? null : value,
                        onChanged: (escolha) =>
                            dropValue.value = escolha.toString(),
                        items: itens
                            .map(
                              (opcao) => DropdownMenuItem(
                                value: opcao,
                                child: Text(opcao),
                              ),
                            )
                            .toList(),
                      ),
                    );
                  }),
              const Expanded(
                child: SizedBox(),
              ),
              const MyButton(),
              const SizedBox(height: 20),
            ],
          )),
    );
  }
}
