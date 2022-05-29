import 'package:flutter/material.dart';

class CategoriasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: Table(
            children: [
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 9, top: 18),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: size.width * 0.5,
                        height: size.height * 0.24,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 18),
                              child: Container(
                                height: 95,
                                width: 95,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 237, 237, 237),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/kyaryTable.png',
                                  scale: 3.5,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 18),
                              child: Text(
                                'Trasero de kayry',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 9, top: 18),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: size.width * 0.5,
                        height: size.height * 0.24,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 18),
                              child: Container(
                                height: 95,
                                width: 95,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 237, 237, 237),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/kyaryTable2.png',
                                  scale: 3.5,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 18),
                              child: Text(
                                'Kyary Feliz',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 9, top: 18),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: size.width * 0.5,
                        height: size.height * 0.24,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 18),
                              child: Container(
                                height: 95,
                                width: 95,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 237, 237, 237),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/kyaryTable3.png',
                                  scale: 3.5,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 18),
                              child: Text(
                                'Kyary Riendose',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 9, top: 18),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: size.width * 0.5,
                        height: size.height * 0.24,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 18),
                              child: Container(
                                height: 95,
                                width: 95,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 237, 237, 237),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/kyaryTable4.png',
                                  scale: 3.5,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 18),
                              child: Text(
                                'Kayry bailando',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 9, top: 18),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: size.width * 0.5,
                        height: size.height * 0.24,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 18),
                              child: Container(
                                height: 95,
                                width: 95,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 237, 237, 237),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/kyaryTable5.png',
                                  scale: 3.5,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 18),
                              child: Text(
                                'Kyary Noches',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 9, top: 18),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: size.width * 0.5,
                        height: size.height * 0.24,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 18),
                              child: Container(
                                height: 95,
                                width: 95,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 237, 237, 237),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/kyaryTable6.png',
                                  scale: 3.5,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 18),
                              child: Text(
                                'Kyary Agradecida',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 9, top: 18),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: size.width * 0.5,
                        height: size.height * 0.24,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 18),
                              child: Container(
                                height: 95,
                                width: 95,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 237, 237, 237),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/kyaryTable7.png',
                                  scale: 3.5,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 18),
                              child: Text(
                                'Kyary Brincando',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 9, top: 18),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: size.width * 0.5,
                        height: size.height * 0.24,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 18),
                              child: Container(
                                height: 95,
                                width: 95,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 237, 237, 237),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/kyaryTable8.png',
                                  scale: 3.5,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 18),
                              child: Text(
                                'Kyary Sorprendida',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
