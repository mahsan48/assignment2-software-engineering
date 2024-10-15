import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'MAD',
            style: TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Top image section
              Container(
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://c4.wallpaperflare.com/wallpaper/322/457/306/'
                        'grand-theft-auto-5-logo-green-five-logo-wallpaper-preview.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Stack section
              Stack(
                alignment: Alignment.center,
                children: [
                  _buildColoredBox(100, Colors.blue),
                  _buildColoredBox(60, Colors.green),
                  _buildNumberBox(),
                ],
              ),
              SizedBox(height: 20),

              // Instruction text
              Text(
                'Say My Name\nyou are Heisenberg',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildTextBox('breaking'),
                  _buildTextBox('bad'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildColoredBox(double size, Color color) {
    return Container(
      width: size,
      height: size,
      color: color,
    );
  }


  Widget _buildNumberBox() {
    return Container(
      color: Colors.red,
      child: Column(
        children: List.generate(9,(i)=>Text(
          '${i+1}',
          style: TextStyle(color: Colors.white, fontSize: 20),
        )),
      ),
    );
  }


  Widget _buildTextBox(String text) {
    return Container(
      width: 100,
      height: 50,
      color: Colors.green,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
