import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculadora extends StatefulWidget{
 @override
  State createState() =>  new CalculadoraState();
     
}
  class CalculadoraState extends State<Calculadora> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Calculadora - simples"),),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
             "Resultado: $resultado" ,
              style: new TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red)
            ),
                 
                 //Campo de texto (input do valor 1)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: campoValor1,
            ),

             //Campo de texto (input do valor 2 ) 
             
             new TextField(
               keyboardType: TextInputType.number,
               decoration: new InputDecoration(hintText: "Informe o valor 2"),
               controller: campoValor2,
             ),
           
             //Espaçamento depois dos inputs
             new Padding(padding: const EdgeInsets.only(top: 20)),


             //Nova Linha(row)
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                   // child: new Text("+"),
                   
                   child: new Text(
                     "+",
                     style: new TextStyle(
                       fontSize: 32,
                       fontWeight: FontWeight.bold,
                       color: Colors.white),
                   ),
                   
                    color: Colors.blueAccent,
                    onPressed: somar,


                    
                    )
                ],
              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text(
                     "-",
                     style: new TextStyle(
                       fontSize: 32,
                       fontWeight: FontWeight.bold,
                       color: Colors.white),
                    ),
                     color: Colors.blueAccent,
                    onPressed: subtrair,
                    )
                ],
              )

          ],
        ),
      ),
    );
  }   // fecha o metódo build

   //Atributos
   var valor1;
   var valor2;
   num resultado = 0;

   TextEditingController campoValor1 = new TextEditingController(text: "");
   TextEditingController campoValor2 = new TextEditingController(text: "");

  //Métodos usados para calcular
  void somar() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 + valor2;
    });
  }

  void subtrair() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 - valor2;
    });
  }
  } // fecha classe