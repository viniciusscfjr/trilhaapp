import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 24, 28, 24),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 8,
                      child: Image.network(
                        "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Já tem cadastro?",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Faça seu login e make the change_",
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 30,
                  width: double.infinity,
                  child: TextField(
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 0),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(106, 27, 154, 1))),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(106, 27, 154, 1)),
                      ),
                      hintText: "E-mail",
                      hintStyle: const TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.person, color: Colors.purple[800]),
                    ),
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
                  child: TextField(
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 0),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(106, 27, 154, 1))),
                      hintText: "Senha",
                      hintStyle: const TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.key, color: Colors.purple[800]),
                      suffixIcon:
                          Icon(Icons.visibility_off, color: Colors.purple[800]),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.purple[800])),
                      onPressed: () {
                        print(email);
                        print(password);
                      },
                      child: const Text("ENTRAR",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(flex: 3, child: Container()),
                const Expanded(
                    flex: 1,
                    child: Text("Equeci minha senha",
                        style: TextStyle(
                            color: Colors.amber, fontWeight: FontWeight.w400))),
                const SizedBox(
                  height: 10,
                ),
                const Expanded(
                    flex: 1,
                    child: Text(
                      "Criar conta",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w400),
                    )),
                Expanded(child: Container()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
