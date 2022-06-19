import 'package:flutter/material.dart';
void main() {
  
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title:  'Share',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home:  Scaffold(
      appBar: AppBar(
        title: const Text("Share"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
        
      ),
      body: Stack(
        children: <Widget>[
          imagen(),
          textoCentro(),
        ],
      ),
    )
    );
   
  }

  Widget imagen() {
    return (Image.network(
      'https://fondosmil.com/fondo/42542.jpg',
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    ));
  }

  Widget textoCentro() {
    return Center(
      child: Container(
        height: 100,
        color: const Color.fromRGBO(0, 0, 0, 0.5),
        child: const Center(
          child: Text('Test',
              style: TextStyle(fontSize: 40, color: Colors.white)),
        ),
      ),
    );
  }
}
