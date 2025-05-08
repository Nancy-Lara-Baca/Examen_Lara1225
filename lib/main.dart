import 'package:flutter/material.dart';
import 'package:Lara1225/Inicio.dart';
import 'package:Lara1225/animated_widget.dart';
import 'package:Lara1225/clip_oval.dart';
import 'package:Lara1225/cupertino_popup_surface.dart';
import 'package:Lara1225/divider.dart';
import 'package:Lara1225/flow.dart';

void main() => runApp(MisRutasApp());

class MisRutasApp extends StatelessWidget {
  const MisRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre Paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/Pantalla1': (context) => const MyStatefulWidget(),
        '/Pantalla2': (context) => const Clip_Oval(),
        '/Pantalla3': (context) => const CupertinoPopupsurface(),
        '/Pantalla4': (context) => const DivideR(),
        '/Pantalla5': (context) => const FloW(),
      },
    );
  }
}
