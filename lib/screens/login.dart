import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  String username = '';
  String password = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controllerUsername.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Container(
            margin: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: const Image(
                        image: AssetImage('assets/images/icon_haermes.png')),
                    margin: const EdgeInsets.fromLTRB(0, 100, 0, 54),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextField(
                        controller: _controllerUsername,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                        ),
                        onChanged: (String value) => setState(() {
                              username = value;
                            })),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 24),
                    child: TextField(
                        controller: _controllerPassword,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                        onChanged: (String value) => setState(() {
                              password = value;
                            })),
                  ),
                  Container(
                    child: ElevatedButton(
                        onPressed: (() {}),
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 21),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                        )),
                    margin: const EdgeInsets.only(bottom: 16),
                  ),
                ],
              ),
            )));
  }
}
