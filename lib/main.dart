import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomePage.dart';
void main(List<String> args) {
   runApp(MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     SystemChrome.setPreferredOrientations([
   DeviceOrientation.landscapeLeft,
   DeviceOrientation.landscapeRight,
   ]);
      
  

    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:HomePage(),
    );
  }
}