import 'package:flutter/material.dart';

// EX 1 – The hobbies (handout page: EX 1)
// Part 1: build ONE hobby card.
// Part 2: extract it into a StatelessWidget called HobbyCard, then show several cards.

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('My Hobbies')),
        body: Container(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HobbyCard(
                  title: 'Travelling',
                  icon: Icons.travel_explore,
                  color: Colors.orange,
                ),

                HobbyCard(
                  title: 'Skating',
                  icon: Icons.ice_skating,
                  color: Colors.green,
                ),

                HobbyCard(
                  title: 'Hiking',
                  icon: Icons.hiking_rounded,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
        ), // YOUR CODE
      ),
    ),
  );
}

class HobbyCard extends StatelessWidget {
  const HobbyCard({
    super.key,
    required this.title,
    required this.icon,
    this.color = Colors.blue, 
  });

  final String title;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, right: 20),
              child: Icon(icon, color: Colors.white),
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
