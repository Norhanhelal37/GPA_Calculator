import 'package:flutter/material.dart';
import 'package:gpa_calculator/screens/home.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(

        height: double.infinity,
        width: double.infinity,
        
        child: Stack(
          
          children: [
           const Image(
            width: double.infinity,
            height: double.infinity,
                fit: BoxFit.fitHeight,
                image: AssetImage(
                  "assets/images/str.jpg",
                )),
            Positioned(
              bottom: 100,
              right: 0,
              child: ElevatedButton(
                style:const ButtonStyle(
                  overlayColor: WidgetStatePropertyAll(Colors.purpleAccent),
                  minimumSize: WidgetStatePropertyAll(Size(200,50))
                ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }));
                  },
                  child:const Text(
                    "Lets See your Results",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  
                  
                  )),
            )
          ],
        ),
      ),
    );
  }
}
