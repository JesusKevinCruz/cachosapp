import 'package:flutter/material.dart';

void main() {
  runApp(const CachosApp());
}

class CachosApp extends StatelessWidget {
  const CachosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Cachos(),
    );
  }
}

class Cachos extends StatefulWidget {
  const Cachos({super.key});

  @override
  State<Cachos> createState() => _CachosState();
}

class _CachosState extends State<Cachos> {
  int balas = 0;
  int tontos = 0;
  int tricas = 0;
  int cuadras = 0;
  int quinas = 0;
  int senas = 0;
  int escalera = 0;
  int full = 0;
  int poker = 0;
  int grande = 0;

  void cbalas() {
    setState(() {
      if (balas >= 5) {
        balas = 0;
      } else {
        balas++;
      }
    });
  }

  void ctontos() {
    setState(() {
      if (tontos >= 10) {
        tontos = 0;
      } else {
        tontos += 2;
      }
    });
  }

  void ctricas() {
    setState(() {
      if (tricas >= 15) {
        tricas = 0;
      } else {
        tricas += 3;
      }
    });
  }

  void ccuadras() {
    setState(() {
      if (cuadras >= 20) {
        cuadras = 0;
      } else {
        cuadras += 4;
      }
    });
  }

  void cquinas() {
    setState(() {
      if (quinas >= 25) {
        quinas = 0;
      } else {
        quinas += 5;
      }
    });
  }

  void csenas() {
    setState(() {
      if (senas >= 30) {
        senas = 0;
      } else {
        senas += 6;
      }
    });
  }

  void cescalera() {
    setState(() {
      if (escalera >= 25) {
        escalera = 0;
      } else if (escalera == 0) {
        escalera += 20;
      } else {
        escalera += 5;
      }
    });
  }

  void cfull() {
    setState(() {
      if (full >= 35) {
        full = 0;
      } else if (full == 0) {
        full += 30;
      } else {
        full += 5;
      }
    });
  }

  void cpoker() {
    setState(() {
      if (poker >= 45) {
        poker = 0;
      } else if (poker == 0) {
        poker += 40;
      } else {
        poker += 5;
      }
    });
  }

  void cgrande() {
    setState(() {
      if (grande >= 50) {
        grande = 0;
      } else {
        grande += 50;
      }
    });
  }

  void mensaje(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Resultado"),
            content: const Text("Has Ganado!!!"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Ok"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 53, 95, 4),
            constraints: const BoxConstraints.expand(),
          ),
          Column(
            children: [
              AppBar(
                title: const Text("CACHOS"),
                centerTitle: true,
                backgroundColor: Colors.transparent,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            const Text("Balas"),
                            ElevatedButton(
                              onPressed: () => cbalas(),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 42, 206, 20),
                                foregroundColor:
                                    Colors.white, // Color del texto
                              ),
                              child: Text('$balas'),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            const Text("Escalera"),
                            ElevatedButton(
                              onPressed: () => cescalera(),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 42, 206, 20),
                                foregroundColor: Colors.white,
                              ),
                              child: Text('$escalera'),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            const Text("Cuadras"),
                            ElevatedButton(
                              onPressed: () => ccuadras(),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 42, 206, 20),
                                foregroundColor: Colors.white,
                              ),
                              child: Text('$cuadras'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            const Text("Tontos"),
                            ElevatedButton(
                              onPressed: () => ctontos(),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 42, 206, 20),
                                foregroundColor: Colors.white,
                              ),
                              child: Text('$tontos'),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            const Text("Full"),
                            ElevatedButton(
                              onPressed: () => cfull(),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 42, 206, 20),
                                foregroundColor: Colors.white,
                              ),
                              child: Text('$full'),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            const Text("Quinas"),
                            ElevatedButton(
                              onPressed: () => cquinas(),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 42, 206, 20),
                                foregroundColor: Colors.white,
                              ),
                              child: Text('$quinas'),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            const Text("Tricas"),
                            ElevatedButton(
                              onPressed: () => ctricas(),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 42, 206, 20),
                                foregroundColor: Colors.white,
                              ),
                              child: Text('$tricas'),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            const Text("Poker"),
                            ElevatedButton(
                              onPressed: () => cpoker(),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 42, 206, 20),
                                foregroundColor: Colors.white,
                              ),
                              child: Text('$poker'),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            const Text("Senas"),
                            ElevatedButton(
                              onPressed: () => csenas(),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 42, 206, 20),
                                foregroundColor: Colors.white,
                              ),
                              child: Text('$senas'),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            const Text("Grande"),
                            ElevatedButton(
                              onPressed: () => cgrande(),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 42, 206, 20),
                                foregroundColor: Colors.white,
                              ),
                              child: Text('$grande'),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: () => mensaje(context),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 42, 206, 20),
                                foregroundColor: Colors.white,
                              ),
                              child: const Text('Dormida'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
