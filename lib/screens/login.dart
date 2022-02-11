import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    _controllerUsername.text = 'Yudi Edri';
    _controllerPassword.text = '123qwe';
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
          child: Column(
            children: [
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
                margin: const EdgeInsets.only(bottom: 16),
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
              Text(
                'Username = $username',
                style: const TextStyle(fontSize: 21),
                textAlign: TextAlign.center,
              ),
              Text(
                'Password = $password',
                style: const TextStyle(fontSize: 21),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }
}
