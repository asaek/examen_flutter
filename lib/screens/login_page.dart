import 'dart:ui';

import 'package:examen_asael/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 237, 237),
      body: Column(
        children: [
          _Appbar(),
          SizedBox(
            height: size.height * 0.07,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
            child: SizedBox(
              height: 150,
              width: 150,
              child: Image.asset('assets/image3.jpg', fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: size.height * 0.15,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    child: Container(
                      height: 65,
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                          // border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),

                          border: InputBorder.none,

                          labelText: 'Correo Electronico',
                          icon: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 8,
                                    offset: Offset(0, 0), // Shadow position
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.email,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                      child: Container(
                        height: 65,
                        color: Colors.white,
                        child: TextField(
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),

                            border: InputBorder.none,

                            // hintText: 'Password',
                            labelText: 'Password',
                            icon: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 8,
                                      offset: Offset(0, 0), // Shadow position
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  Icons.email,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: GestureDetector(
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              offset: Offset(0, 8), // Shadow position
                            ),
                          ],
                        ),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (BuildContext context) => MenuPage(),
                        ),
                      ),
                    ),
                  ),
                  const _botonesLogin(),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('Dont have an account?  '),
                      ),
                      Container(
                        child: Text(
                          'Sign up Now!',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _botonesLogin extends StatelessWidget {
  const _botonesLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 8), // Shadow position
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Image.asset('assets/Facebook_f_logo.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Facebook'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 8), // Shadow position
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Image.asset('assets/google_logo.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Google'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
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
                'Sign In',
                style: TextStyle(
                  color: Colors.black,
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
                  builder: (BuildContext context) => HomePage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
