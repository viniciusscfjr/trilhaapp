import 'dart:math';

class GeradorNumeroAleatorioService {
  static int gerarNumberoAleatorio(int numeroMaximo) {
    return Random().nextInt(numeroMaximo);
  }
}
