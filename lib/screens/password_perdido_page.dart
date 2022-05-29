import 'package:examen_asael/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordPedirdoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 237, 237),
      body: Column(
        children: [
          _Appbar(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: SizedBox(
              height: size.height * 0.27,
              child: Image.asset(
                'assets/kyaryTable11.png',
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.50,
            child: const Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                  height: 1.5,
                  fontWeight: FontWeight.bold),
            ),
          ),
          _InputTextFieldCorreo(),
          const Text('Email Sent to test ****gmail.com'),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
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
                  'Send Now',
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
        ],
      ),
    );
  }
}

class _InputTextFieldCorreo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 25,
      ),
      child: Container(
        height: 65,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 0), // Shadow position
            ),
          ],
        ),
        child: TextField(
          cursorColor: Colors.green,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'Correo Electronico',
            labelStyle: const TextStyle(
              color: Colors.green,
              fontSize: 15,
            ),
            icon: Padding(
              padding: const EdgeInsets.only(left: 10),
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
                'Forgot Password',
                style: TextStyle(
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
          ],
        ),
      ),
    );
  }
}
