import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: 0,
          title: const Text("Student Portfolio"),
          backgroundColor: const Color(0xFFBA0000),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),  
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 32,
          ),
        ),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Image.asset("assets/wifeLakers.jpg"),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Welcome to my Portfolio",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Hi I'm",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Huh Yunjin",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFBA0000),
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Product Designer",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              const Text(
                "Collaborating with highly skilled individuals, our agency delivers top-quality services.",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ), 
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              FilledButton(
                onPressed: (){}, 
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFFBA0000),
                  minimumSize: Size(150, 60), // width: 150, height: 60
                ),
                child: Text(
                  "Hire Me", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    color: Colors.white,
                    fontSize: 18
                  )
                ),
              ),
              const SizedBox(height: 10),
              OutlinedButton.icon(
                onPressed: (){},
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(180, 60), // Adjust height and width
                ),
                icon: Icon(Icons.download, color: Color(0xFFBA0000)), 
                label: Text(
                  "Download CV",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    color: Color(0xFFBA0000),
                    fontSize: 18
                  )
                )
              )
            ],  
          ),
        ),
      ),
    );
  }
}
