import 'package:examen_asael/models/modelos.dart';
import 'package:examen_asael/providers/providers.dart';
import 'package:examen_asael/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controllerTutorial = PageController();

  @override
  void initState() {
    Provider.of<ConsumiendoApiProvider>(context, listen: false)
        .setPageController(controllerTutorial);
    final controllerPageProvider =
        Provider.of<ConsumiendoApiProvider>(context, listen: false)
            .pageController;

    controllerTutorial.addListener(() {
      Provider.of<ConsumiendoApiProvider>(context, listen: false)
          .setCurrentPage(controllerPageProvider.page!.toInt());
      // print(controllerPageProvider.page!.toString());
    });
    super.initState();
  }

  @override
  void dispose() {
    controllerTutorial.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            bottom: 0,
            child: _CuadroVerde(size: size),
          ),
          SizedBox(
            height: size.height * 0.9,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tutorialLista.length,
              controller: controllerTutorial,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.6,
                      child: Image.asset(
                        tutorialLista[index].imagen,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 150,
                      padding: EdgeInsets.only(top: 45),
                      child: Column(
                        children: [
                          Text(
                            tutorialLista[index].titulo,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            tutorialLista[index].titulo,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          // const Spacer(),
        ],
      ),
    );
  }
}

class _CuadroVerde extends StatelessWidget {
  const _CuadroVerde({
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    final circuloSeleccionado =
        Provider.of<ConsumiendoApiProvider>(context, listen: true).currentPage;
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(30),
      ),
      child: Container(
        width: size.width,
        height: size.height * 0.4,
        color: Color.fromARGB(255, 0, 184, 6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: GestureDetector(
                    child: Container(
                      width: 100,
                      height: 70,
                      alignment: Alignment.center,
                      child: const Text(
                        'SKIP',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (BuildContext context) => LoginPage(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    width: 100,
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (circuloSeleccionado == index)
                                  ? Colors.white
                                  : Color.fromARGB(108, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      width: 100,
                      height: 70,
                      alignment: Alignment.center,
                      child: const Text(
                        'NEXT',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onTap: () {
                      print('ira we de programar');
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (BuildContext context) => LoginPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
