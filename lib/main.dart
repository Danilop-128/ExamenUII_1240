import 'package:flutter/material.dart';
import 'package:lopezexamen/pantalla_inicio.dart';
import 'package:lopezexamen/pantalla_bottom_nav_bar.dart';
import 'package:lopezexamen/pantalla_rich_text.dart';
import 'package:lopezexamen/pantalla_list_wheel_scroll_view.dart';
import 'package:lopezexamen/pantalla_rotated_box.dart';
import 'package:lopezexamen/pantalla_stateful_widget.dart';
import 'package:lopezexamen/pantalla_about_dialog.dart';
import 'package:lopezexamen/pantalla_range_slider.dart';
import 'package:lopezexamen/pantalla_animated_padding.dart';
import 'package:lopezexamen/pantalla_draggable.dart';
import 'package:lopezexamen/pantalla_null_aware_operators.dart';

void main() => runApp(MiExamen());

class MiExamen extends StatefulWidget {
  const MiExamen({Key? key}) : super(key: key);

  @override
  State<MiExamen> createState() => _MiExamenState();
}

class _MiExamenState extends State<MiExamen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre Paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicio(),
        '/pantalla2': (context) => const PantallaBottomNavBar(),
        '/pantalla3': (context) => const PantallaRichText(),
        '/pantalla4': (context) => const PantallaListWheelScrollView(),
        '/pantalla5': (context) => const PantallaRotatedBox(),
        //'/pantalla6': (context) => const PantallaStatefulWidget(),
        '/pantalla7': (context) => const PantallaAboutDialog(),
        '/pantalla8': (context) => const PantallaRangeSlider(),
        '/pantalla9': (context) => const PantallaAnimatedPadding(),
        '/pantalla10': (context) => const PantallaDraggable(),
        '/pantalla11': (context) => PantallaNullAwareOperators(),
      },
    );
  }
}
