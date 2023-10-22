import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 229, 242, 229),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              const Icon(Icons.person, size: 150, color: Colors.amber),
              const SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 30,
                width: double.infinity,
                child: const Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe seu email: ")),
                    Expanded(flex: 3, child: Text("Email"))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 30,
                width: double.infinity,
                child: const Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe sua senha: ")),
                    Expanded(flex: 3, child: Text("Senha"))
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                alignment: Alignment.center,
                color: Colors.green,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 30,
                width: double.infinity,
                child: const Text("Login"),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 30,
                width: double.infinity,
                child: const Text("Cadastro"),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
