import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card1 extends StatefulWidget {
  const Card1({super.key});

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20,),
      width: 350,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/malang.png',
                  ),
                  fit: BoxFit.cover
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 250,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
