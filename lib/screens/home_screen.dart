import 'package:flutter/material.dart';
import 'package:loteria/bloc/sorteio_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _sorteioBloc = new SorteioBloc();

  @override
  void dispose() {
    _sorteioBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          new Container(
            height: double.infinity,
            width: double.infinity,
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                new Color.fromARGB(255, 0, 250, 154),
                new Color.fromARGB(255, 0, 255, 127),
              ],
              stops: [0.1, 0.8],
            )),
          ),
          new SingleChildScrollView(
            child: new Container(
              margin: EdgeInsets.all(20),
              child: new Column(
                children: <Widget>[
                  new Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/imagens/trevinho.png"),
                      fit: BoxFit.contain,
                    )),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  StreamBuilder<List>(
                      stream: _sorteioBloc.numeros,
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return new Column(
                            children: <Widget>[
                              const Text(
                                "Este aplicativo serve para sugestão dos seis números para aposta na Mega-Sena",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Orator',
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Boa Sorte!",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Orator',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 50,
                                width: MediaQuery.of(context).size.width / 1.45,
                                child: new RaisedButton(
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(70),
                                  ),
                                  onPressed: () {
                                    _sorteioBloc.sorteio();
                                  },
                                  child: const Text(
                                    "Gerar números",
                                    style: const TextStyle(
                                      fontSize: 25,
                                      fontFamily: "Orator",
                                      color: Colors.white,
                                    ),
                                  ),
                                  splashColor: Colors.yellow,
                                ),
                              )
                            ],
                          );
                        } else {
                          return Column(
                            children: <Widget>[
                              const Text(
                                "Aposta sugerida abaixo",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Orator',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    radius: 40,
                                    child: new Text(
                                      snapshot.data[0].toString(),
                                      style: new TextStyle(
                                        color: Colors.green,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Orator',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    radius: 40,
                                    child: new Text(
                                      snapshot.data[1].toString(),
                                      style: new TextStyle(
                                        color: Colors.green,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Orator',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    radius: 40,
                                    child: new Text(
                                      snapshot.data[2].toString(),
                                      style: new TextStyle(
                                        color: Colors.green,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Orator',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    radius: 40,
                                    child: new Text(
                                      snapshot.data[3].toString(),
                                      style: new TextStyle(
                                        color: Colors.green,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Orator',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    radius: 40,
                                    child: new Text(
                                      snapshot.data[4].toString(),
                                      style: new TextStyle(
                                        color: Colors.green,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Orator',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    radius: 40,
                                    child: new Text(
                                      snapshot.data[5].toString(),
                                      style: new TextStyle(
                                        color: Colors.green,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Orator',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Não gostou dos números? Gere outra sugestaão",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Orator',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 50,
                                width: MediaQuery.of(context).size.width / 1.45,
                                child: new RaisedButton(
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(70),
                                  ),
                                  onPressed: () {
                                    _sorteioBloc.sorteio();
                                  },
                                  child: const Text(
                                    "Gerar números",
                                    style: const TextStyle(
                                      fontSize: 25,
                                      fontFamily: "Orator",
                                      color: Colors.white,
                                    ),
                                  ),
                                  splashColor: Colors.yellow,
                                ),
                              ),
                            ],
                          );
                        }
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
