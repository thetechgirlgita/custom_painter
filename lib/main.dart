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
      home: Drawing(), // Defining my widget "Drawing" here in home.
    );
  }
}
// Widget starts from here in stateless widget
class Drawing extends StatelessWidget {
  const Drawing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( // For top of the screen we need some decoration as App Bar
        centerTitle: true, // It's help to maintain the text of app bar in center.
        backgroundColor: Colors.pinkAccent, // Background color of App bar
        title: const Text("Let's Draw",
          style: TextStyle( // Helps you to give style o your text like bold, color, font, size etc.
            color: Colors.white,
          ),
        ),
      ),
      body: CustomPaint(
        // painter: The painter that paints before the child.
        painter: ShapePainter() , // our new widget for extend our custom painter class
        // this child will return  a Container
        child: Container(),
      ),
    );
  }
}


// Now, we have to define the ShapePainter widget, which should extend the  class.
// For painting lines
class ShapePainter extends CustomPainter{
  @override
  // paint: This method is called whenever the object needs to be repainted.
  void paint(Canvas canvas, Size size){
    //  implement paint
    //you have the paint variable storing an instance of the Paint class, which is like a paintbrush
    var paint = Paint()

        ..color = Colors.pinkAccent
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.round;
    // there are two Offset variables that specify the starting and ending position coordinates.
    Offset startingPoint = Offset(0,size.height / 2);
    Offset endingPoint = Offset(size.width, size.height /2);
    // the drawLine method is called on the canvas for drawing a line between the two Offset positions,
    canvas.drawLine(startingPoint, endingPoint, paint);
  }

  @override
  // shouldRepaint: This method is called when a new instance of the class is provided.
  bool shouldRepaint(CustomPainter oldDelegate){
    // TODO : implement shouldRepaint
    return false;
  }
}