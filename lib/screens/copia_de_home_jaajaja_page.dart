import 'package:examen_asael/models/modelos.dart';
import 'package:examen_asael/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CopiaHomeJajajajaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Hot Deal:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Limite Offer',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ],
              ),
            ),
            _PrimeraListaOfertas(),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 12, right: 12),
              child: SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  direction: Axis.horizontal,
                  children: const [
                    _ItemWrap(
                      imagen: 'assets/kyaryTable.png',
                      texto: 'Kyary Trasero',
                      index: 0,
                    ),
                    _ItemWrap(
                      imagen: 'assets/kyaryTable2.png',
                      texto: 'Kyary Feliz',
                      index: 1,
                    ),
                    _ItemWrap(
                      imagen: 'assets/kyaryTable3.png',
                      texto: 'Kyary Riendo',
                      index: 2,
                    ),
                    _ItemWrap(
                      imagen: 'assets/kyaryTable4.png',
                      texto: 'Kyary Agradeciendo',
                      index: 3,
                    ),
                    _ItemWrap(
                      imagen: 'assets/kyaryTable5.png',
                      texto: 'Kyary Buenas Noches',
                      index: 4,
                    ),
                    _ItemWrap(
                      imagen: 'assets/kyaryTable6.png',
                      texto: 'Kyary Gracias',
                      index: 5,
                    ),
                    _ItemWrap(
                      imagen: 'assets/kyaryTable7.png',
                      texto: 'Kyary Posando',
                      index: 6,
                    ),
                    _ItemWrap(
                      imagen: 'assets/kyaryTable8.png',
                      texto: 'Kyary Admirando',
                      index: 7,
                    ),
                    _ItemWrap(
                      imagen: 'assets/kyaryTable9.png',
                      texto: 'Kyary mmmmmm',
                      index: 8,
                    ),
                    _ItemWrap(
                      imagen: 'assets/kyaryTable10.png',
                      texto: 'Kyary Corriendo',
                      index: 9,
                    ),
                    _ItemWrap(
                      imagen: 'assets/kyaryTable11.png',
                      texto: 'Kyary おやすみ',
                      index: 10,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _PrimeraListaOfertas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        itemCount: listViewListaTopCategorias.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding:
              const EdgeInsets.only(right: 10, left: 10, bottom: 5, top: 5),
          child: Container(
            width: 150,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 0), // Shadow position
                ),
              ],
            ),
            child: Stack(
              children: [
                const _LetrerosDescuentoTop(),
                Column(
                  children: [
                    const SizedBox(
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: SizedBox(
                        height: 85,
                        width: 85,
                        child: Image.asset(
                            listViewListaTopCategorias[index].imagen),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 6,
                      ),
                      child: Text(
                        listViewListaTopCategorias[index].titulo,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 7, left: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Price: \$20.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.orangeAccent,
                            ),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 176, 217, 178),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                ),
                                onTap: () {
                                  // if (cantidadK[index] > 0) {
                                  //   cantidadK[index] = cantidadK[index] - 1;
                                  //   Provider.of<ConsumiendoApiProvider>(context,
                                  //           listen: false)
                                  //       .setcantidad(
                                  //           cantidad: cantidadK[index], index: index);
                                  // }
                                },
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: Text(
                                  '0',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              GestureDetector(
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                ),
                                onTap: () {
                                  // if (cantidadK[index] > 0) {
                                  //   cantidadK[index] = cantidadK[index] - 1;
                                  //   Provider.of<ConsumiendoApiProvider>(context,
                                  //           listen: false)
                                  //       .setcantidad(
                                  //           cantidad: cantidadK[index], index: index);
                                  // }
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LetrerosDescuentoTop extends StatelessWidget {
  const _LetrerosDescuentoTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 15,
          width: 45,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 115, 0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
          ),
          child: const Text(
            '10% Off',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ),
        Container(
          height: 15,
          width: 40,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
          ),
          child: const Text(
            '12pcs',
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
            ),
          ),
        ),
      ],
    );
  }
}

class _ItemWrap extends StatelessWidget {
  final String imagen;
  final String? texto;
  final int index;

  const _ItemWrap({required this.imagen, this.texto, required this.index});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cantidadK =
        Provider.of<ConsumiendoApiProvider>(context, listen: true).cantidad;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 290,
        width: size.width * 0.45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 140,
                  child: Image.asset(
                    imagen,
                    scale: 2.1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 40,
                      padding: const EdgeInsets.only(top: 5),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 24,
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                            size: 19,
                          ),
                          Text(
                            '4.7',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Text(
              texto!,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 7),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ),
              ),
            ),
            const Text(
              'Price: \$20.00',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 176, 217, 178),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    onTap: () {
                      if (cantidadK[index] > 0) {
                        cantidadK[index] = cantidadK[index] - 1;
                        Provider.of<ConsumiendoApiProvider>(context,
                                listen: false)
                            .setcantidad(
                                cantidad: cantidadK[index], index: index);
                      }
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      cantidadK[index].toString(),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    onTap: () {
                      cantidadK[index] = cantidadK[index] + 1;
                      Provider.of<ConsumiendoApiProvider>(context,
                              listen: false)
                          .setcantidad(
                              cantidad: cantidadK[index], index: index);
                    },
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
