
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:math';

class SorteioBloc extends BlocBase{
  final _numerosController = BehaviorSubject<List>();

  Stream<List> get numeros => _numerosController.stream;

  void sorteio(){
    var random = new Random();
    var lista = new List();
    while(lista.length != 6){
      var n = random.nextInt(60) +1;
      if(!lista.contains(n)){
        lista.add(n);
      }
    }
    lista.sort();
    //print(lista);
    _numerosController.add(lista);
  }

  @override
  void dispose() {
    _numerosController.close();
  }

}