import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main () => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
    var _perguntaSelecionada = 0;
    final _perguntas = const [
            //final List<Map<Strinf, Object> perguntas = [

            {
              'texto': 'Qual é  a sua cor favorita?',
              'respostas': [{'texto': 'Preto', 'nota': 78}, 
                            {'texto':'Vermelho', 'nota': 56}, 
                            {'texto':'Verde', 'nota':89}, 
                            {'texto':'Branco', 'nota': 32}
              ],

            },
            
            {
              'texto': 'Qual é o seu animal favorito?',
              'respostas': [{'texto': 'Coelho', 'nota': 10}, 
                            {'texto':'Cobra', 'nota': 11}, 
                            {'texto':'Elefante', 'nota':66}, 
                            {'texto':'Leão', 'nota': 21}
              ],

            },
            {
              'texto': 'Qual é o seu instrutor favorito?',
              'respostas': [{'texto': 'Maria', 'nota': 5}, 
                            {'texto':'João', 'nota': 3}, 
                            {'texto':'Leo', 'nota':1}, 
                            {'texto':'Pedro', 'nota': 2}
              ],

            },
                     
        ];

    void _responder(){
        if(temPerguntaSelecionada) {
            setState(() {
                _perguntaSelecionada++;
            });
        }
    }

    bool get temPerguntaSelecionada{
        return _perguntaSelecionada < _perguntas.length;
    }


    @override
    Widget build(BuildContext context) {



        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: Text('Perguntas'),
                    
                ),

                body: temPerguntaSelecionada 
                 ? Questionario(
                     perguntas: _perguntas,
                     perguntaSelecionada: _perguntaSelecionada,
                     quandoResponder: _responder,
                 )
                 : Resultado(),
                ), 
            );
    }
}

class PerguntaApp extends StatefulWidget {

    _PerguntaAppState createState( ){ 
        return _PerguntaAppState();    
    }

}