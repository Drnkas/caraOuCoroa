// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  const Resultado (Object resultado, {Key? key, this.valor = ""}) : super(key: key);

  final String valor;

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {

  @override
  Widget build(BuildContext context) {

    var caminhoImagem = "image/moeda_cara.png";

    if( widget.valor == "cara"){
      caminhoImagem = "images/moeda_cara.png";
    }else{
      caminhoImagem = "images/moeda_coroa.png";
    }

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.green])
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              /* ------------- moeda ------------*/
              children: [
                new Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                        image: new AssetImage(caminhoImagem),
                    )
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(40)
                ),


                /* ------------- botão ------------*/
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onSurface: Colors.green,
                      elevation: 15,
                    ),
                    onPressed: (){
                      Navigator.pop(
                          context,
                      );
                    },
                    child: Text(
                      "Voltar",
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
