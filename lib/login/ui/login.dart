import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                top: -300,
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height + 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/cityBg.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'TuristAI',
                          style: TextStyle(
                              color: Color.fromRGBO(75, 136, 192, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.mail),
                            label: Text(
                              'Gmail',
                              style: TextStyle(
                                  height: 0.1,
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.password),
                            label: Text(
                              'Password',
                              style: TextStyle(
                                  height: 0.1,
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text('Forgot Password?'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const ElevatedButton(
                          style: ButtonStyle(
                            minimumSize:
                                MaterialStatePropertyAll(Size(150, 40)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue),
                          ),
                          onPressed: null,
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (kDebugMode) {
                              print('Testing Gesture create account');
                            }
                          },
                          child: const Text(
                            'Create a new account',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
