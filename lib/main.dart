import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 1080 || constraints.maxHeight > 1920) {
              print("maxWidth web: ${constraints.maxWidth}");
              print("maxHeight web: ${constraints.maxHeight}");
              return Center(
                child: Container(
                  width: 700,
                  height: 300,
                  color: Colors.grey,
                  child: Text('gg'),
                ),
              );
            } else {
              print("max: ${constraints.maxWidth}");
              print("max: ${constraints.maxHeight}");
              return Center(
                child: Container(
                  width: 500,
                  height: 150,
                  color: Colors.blue,
                  child: Text('gg'),
                ),
              );
            }
          }),
        ),
      ),
    );
  }
}
