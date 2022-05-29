import 'package:examen_asael/providers/providers.dart';
import 'package:examen_asael/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controllerMainMenu =
        Provider.of<ConsumiendoApiProvider>(context, listen: true)
            .pageControllerMain;

    return Scaffold(
      body: Column(
        children: [
          // TODO mover el appbar junto con el pageview
          _Appbar(),
          Expanded(
            child: Container(
              child: PageView(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                controller: controllerMainMenu,
                children: [
                  CategoriasPage(),
                  OPcionHomePage(),
                  Container(color: Colors.green),
                  Container(color: Colors.yellow),
                  Container(color: Colors.orange),
                ],
              ),
            ),
          ),
          Row(
            children: const [
              BotonBottom(
                seleccionado: 0,
                icono: Icons.home,
              ),
              BotonBottom(
                seleccionado: 1,
                icono: Icons.home,
              ),
              BotonBottom(
                seleccionado: 2,
                icono: Icons.home,
              ),
              BotonBottom(
                seleccionado: 3,
                icono: Icons.home,
              ),
              BotonBottom(
                seleccionado: 4,
                icono: Icons.home,
              ),
            ],
          ),
        ],
      ),
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
    return Container(
      height: 100,
      child: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: const Text(
                'Home',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
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
