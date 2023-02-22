import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_text_field.dart';
// ignore: depend_on_referenced_packages
import 'package:file_picker/file_picker.dart';

class FormularioIten extends StatelessWidget {
  FormularioIten({super.key});

  final nomeItemController = TextEditingController();
  final quantidadeItemController = TextEditingController();
  final patrimonioItemController = TextEditingController();
  final centroDecustoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Adicionar Item'),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          //actions: <Widget>[
          //  IconButton(
          //    icon: const Icon(
          //      Icons.settings,
          //      color: Colors.white,
          //    ),
          //    onPressed: () {
          //      // do something
          //   },
          //  )
          //],
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            //TextField do nome do produto
            MyTextField(
              controller: nomeItemController,
              hintText: "Ex: Mouse",
              obscureText: false,
              text: "Nome",
              keyBoardType: TextInputType.text,
              icon: const Icon(Icons.edit),
            ),
            const SizedBox(height: 20),
            //TextField da quantidade do item
            MyTextField(
              controller: quantidadeItemController,
              hintText: "Ex: 30",
              obscureText: false,
              text: "Quantidade",
              keyBoardType: TextInputType.number,
              icon: const Icon(Icons.pin),
            ),
            const SizedBox(height: 20),
            //TextField do nome do produto
            MyTextField(
              controller: patrimonioItemController,
              hintText: "Ex: 1123",
              obscureText: false,
              text: "Patrimônio",
              keyBoardType: TextInputType.number,
              icon: const Icon(Icons.edit),
            ),
            const SizedBox(height: 25),
            //TextField do nome do produto
            MyTextField(
              controller: centroDecustoController,
              hintText: "Ex: Service Desk",
              obscureText: false,
              text: "Centro de Custo",
              keyBoardType: TextInputType.text,
              icon: const Icon(Icons.edit),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.picture_as_pdf),
                label: const Text("Clique para adicionar a NF"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 230, 231, 231)),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 52, 134, 221)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: const BorderSide(color: Colors.blue),
                      ),
                    )),
                onPressed: () async {
                  final result = await FilePicker.platform.pickFiles();
                  if (result == null) return;

                  //final file = result.files.first;
                  //openFile(file);
                  //print('Name: ${file.name}');
                  //print('Bytes: ${file.bytes}');
                  //print('Name: ${file.size}');
                  //print('Extension: ${file.extension}');
                  //print('Path: ${file.path}');
                },
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 166,
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.camera_alt_outlined),
                label: const Text("Adicionar imagem aqui"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 230, 231, 231)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 52, 134, 221)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: const BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                onPressed: () async {
                  final result = await FilePicker.platform.pickFiles();
                  if (result == null) return;

                  //final file = result.files.first;
                  // openFile(file);
                  //print('Name: ${file.name}');
                  //print('Bytes: ${file.bytes}');
                  // print('Name: ${file.size}');
                  // print('Extension: ${file.extension}');
                  //print('Path: ${file.path}');
                },
              ),
            ),

            const Expanded(
              child: SizedBox(),
            ),
            const MyButton(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
