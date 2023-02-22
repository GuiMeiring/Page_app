import 'package:flutter/material.dart';
import 'package:formulario/page/formulario_iten.dart';

import 'package:formulario/page/formulario_user.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FormularioIten();
  }
}
