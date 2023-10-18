import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card1.dart';

class NeedRent extends StatefulWidget {
  const NeedRent({super.key});

  @override
  State<NeedRent> createState() => _NeedRentState();
}

class _NeedRentState extends State<NeedRent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 400),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Near your location",
                    style: TextStyle(
                      color: Color(0xFF1A1E25),
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("89 properties in Surabaya",
                        style: TextStyle(
                            color: Color(0xFF7D7F88),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("See all",
                        style: TextStyle(
                          color: Color(0xFF917AFD),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //const SizedBox(height: 20,),
            SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index){
                  return const Card1();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
