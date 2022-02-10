import 'package:flutter/material.dart';

void main(){
  runApp(const custom_painter());
}


// ignore: camel_case_types
class custom_painter extends StatelessWidget {
  const custom_painter({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Drawing(),
    );
  }
}

class Drawing extends StatelessWidget {
  const Drawing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: const Text("Let's Draw",
          style: TextStyle(
            color: Colors.white,

          ),
        ),
      ),
     // body: CustomPainter(
      //  painter: ,
     // )
    );
  }
}

