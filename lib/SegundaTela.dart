import 'package:flutter/material.dart';
import 'Resultado.dart';
import 'dart:math';

class SegundaTela extends StatefulWidget {
  @override
  _SegundaTelaState createState() => _SegundaTelaState();
}

class _SegundaTelaState extends State<SegundaTela> {

  void _exibirResultado (){

    var itens = ["cara", "coroa"];
    var numero = Random().nextInt( itens.length);
    var resultado = itens[numero];

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado(resultado)
        ));

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.green])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              /* -------- titulo ------- */
              children: [
                Image.asset("images/logoCerta.png"),
                
                Padding(
                    padding: EdgeInsets.all(20)
                ),
                
                /*------ botao ------*/
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onSurface: Colors.green,
                    elevation: 15,

                  ),
                    onPressed: (){
                    _exibirResultado();
                    },
                    child: Text(
                        "Jogar",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.blue,
                        fontWeight: FontWeight.w800
                      ),
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}