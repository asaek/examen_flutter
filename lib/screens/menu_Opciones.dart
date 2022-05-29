import 'package:examen_asael/models/modelos.dart';
import 'package:examen_asael/providers/providers.dart';
import 'package:examen_asael/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // TODO mover el appbar junto con el pageview
          _Appbar(),
          Expanded(
            child: _PageViewFull(),
          ),
          Row(
            children: const [
              BotonBottom(
                seleccionado: 0,
                icono: Icons.home,
              ),
              BotonBottom(
                seleccionado: 1,
                icono: Icons.local_offer,
              ),
              BotonBottom(
                seleccionado: 2,
                icono: Icons.window,
              ),
              BotonBottom(
                seleccionado: 3,
                icono: Icons.person,
              ),
              BotonBottom(
                seleccionado: 4,
                icono: Icons.shopping_cart,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PageViewFull extends StatefulWidget {
  @override
  State<_PageViewFull> createState() => _PageViewFullState();
}

class _PageViewFullState extends State<_PageViewFull> {
  PageController controladorPageView = PageController(initialPage: 0);
  @override
  void initState() {
    Provider.of<ConsumiendoApiProvider>(context, listen: false)
        .setpageControllerMain(controladorPageView);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      controller: controladorPageView,
      children: [
        OPcionHomePage(),
        CategoriasPage(),
        CopiaHomeJajajajaPage(),
        Container(color: Colors.yellow),
        Container(color: Colors.orange),
      ],
    );
  }
}

class BotonBottom extends StatelessWidget {
  final int seleccionado;
  final IconData icono;

  const BotonBottom({
    required this.seleccionado,
    required this.icono,
  });
  @override
  Widget build(BuildContext context) {
    final int seleccionadoProvider =
        Provider.of<ConsumiendoApiProvider>(context, listen: true)
            .getseleccionadoBottom();
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: size.height * 0.06,
        width: size.width / 5,
        decoration: BoxDecoration(
          color: (seleccionadoProvider == seleccionado)
              ? const Color(0xFF77BE1F)
              : const Color.fromARGB(255, 57, 76, 59),
        ),
        child: Icon(
          icono,
          color: Colors.white,
          size: 30,
        ),
      ),
      onTap: () {
        Provider.of<ConsumiendoApiProvider>(context, listen: false)
            .setseleccionadoBottom(seleccionado);
      },
    );
  }
}

class _Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final tituloSeleccionado =
        Provider.of<ConsumiendoApiProvider>(context, listen: true)
            .getseleccionadoBottom();
    return SizedBox(
      height: size.height * 0.1,
      child: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: Text(
                menuTitulo[tituloSeleccionado].titulo,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            GestureDetector(
              child: const SizedBox(
                width: 70,
                height: 100,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              onTap: () => Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (BuildContext context) => LoginPage(),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Row(
                children: const [
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
