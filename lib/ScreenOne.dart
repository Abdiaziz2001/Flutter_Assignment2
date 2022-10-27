import 'package:examples/ScreenTwo.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Screen One")),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(""),
              )
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                  width: 400, height: 430, child: Image.asset("images/13.jpg")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text(
                    'Abdiaziz Kasim Mohamed',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SecondScreen()));
                  },
                  child: Text(
                    "Go Second Screen",
                    style: TextStyle(fontSize: 20),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
