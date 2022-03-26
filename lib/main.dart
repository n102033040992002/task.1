import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.deepPurpleAccent,
          body: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.fromLTRB(25, 80, 25, 70),
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(50.0)),
                  const Text(
                    'SIGN TO YOUR ACCOUNT',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                    color: const Color.fromRGBO(158, 158, 158, 150),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your Email",
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    color: const Color.fromRGBO(158, 158, 158, 150),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                      ),
                      obscureText: true,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Checkbox(
                            activeColor: Colors.deepPurpleAccent,
                            value: value,
                            onChanged: (val) {
                              setState(() {
                                value = !value;
                              });
                            }),
                        const Text(
                          'Keep me signed in',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(158, 158, 158, 30)),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign in',
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.deepPurpleAccent),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          alignment: Alignment.center,
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.fromLTRB(90, 15, 90, 15)),
                          elevation: MaterialStateProperty.all(15),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('Forgot your password?'),
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(
                                const Color.fromRGBO(158, 158, 158, 30))),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
