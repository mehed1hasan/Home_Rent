import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeedBuy extends StatefulWidget {
  const NeedBuy({super.key});

  @override
  State<NeedBuy> createState() => _NeedBuyState();
}

class _NeedBuyState extends State<NeedBuy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 400),
      color: Color(0xFFEEEEEE),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 400,
              width: 410,
              //color: Colors.blue,
              child: Center(child: Text("Buy")),
            ),
            SizedBox(height: 20,),
            Container(
              //margin: EdgeInsets.only(top: 400),
              height: 400,
              width: 410,
              //color: Colors.blue,
              child: Center(child: Text("Buy")),
            ),
          ],
        ),
      ),
    );
  }
}
