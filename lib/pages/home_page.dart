import 'package:flutter/material.dart';

import '../service/gerador_numero_aleatorio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var quantidadeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu App"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Container(
                  width: double.infinity,
                  color: Colors.yellow,
                  child: const Text("Ações do Usuário")),
            ),
            Container(
                width: 200,
                height: 200,
                color: Colors.cyan,
                child: Text("Foi clicado $quantidadeCliques vezes")),
            Expanded(
              child: Container(
                  width: double.infinity,
                  color: Colors.indigo,
                  child: Text("O número gerado foi: $numeroGerado")),
            ),
            Expanded(
              child: Container(
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                            color: Colors.red, child: const Text("Nome: "))),
                    Expanded(
                        flex: 2,
                        child: Container(
                            color: Colors.green,
                            child: const Text("Vinicius Freitas"))),
                    Expanded(
                        flex: 2,
                        child: Container(
                            color: Colors.blue, child: const Text("30")))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            quantidadeCliques++;
            numeroGerado =
                GeradorNumeroAleatorioService.gerarNumberoAleatorio(1000);
          });
        },
        child: const Icon(Icons.autorenew),
      ),
    );
  }
}
