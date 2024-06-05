import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFf7be7c),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(18, 50, 18, 18),
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween
                  children: [
                    Icon(Icons.menu, size:30),
                    Icon(Icons.search, size:30),
                    ],
                  ),
                  Row(
                    Container(
                      height:80,
                      margin: EdgeInsets.only(left:30, right:30),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image.DecorationImage(
                          image.AssetImage("img/john.png"),
                        )
                      ),
                    )
                  )
              ],
            ),
          )
        ],
      )
    );
  }
}