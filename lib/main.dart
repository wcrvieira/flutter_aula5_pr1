import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Number',
      theme: ThemeData(        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Recebendo número:'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int numero = 0;
  TextEditingController controlaNum = TextEditingController();
  // criação do controlador  

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,      
        title: Text(widget.title),
      ),
      body: Center(       
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: controlaNum,
                // Ajuste do controlador                
              ),
            ),
            Text(
              // exibindo valor do controlador: 
              'Resultado: $numero',
              style: const TextStyle(
                fontSize: 32,
              ),
              ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  numero = int.parse(controlaNum.text);
                  controlaNum.text = '$numero';
                  controlaNum.text = '';
                  // usando valor do controlador                  
                });
              },
              child: const Text('Verificar'),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
