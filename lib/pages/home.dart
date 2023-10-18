import 'package:flutter/material.dart';
import 'package:home_rent/widgets/need_buy.dart';
import 'package:home_rent/widgets/need_rent.dart';
import 'package:slidable_button/slidable_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int flag = 0;
  String result = "I need to rent";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 290, left: 15),
            decoration: BoxDecoration(
              color: const Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: const Color(0xFFE3E3E7))
            ),
            child: HorizontalSlidableButton(
              width: 380,
              height: 80,
              buttonWidth: 210,
              //color: Colors.blue,
              // buttonColor: Theme.of(context).primaryColor,
              dismissible: false,
              label: Container(
                margin: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: const Color(0xFF684DEC),
                  borderRadius: BorderRadius.circular(35),
                  boxShadow:[
                    //const BoxShadow(color: Colors.yellowAccent, offset: Offset(0, 5)),
                    BoxShadow(
                      color: Colors.grey.shade500, //color of shadow
                      //spreadRadius: 5, //spread radius
                      blurRadius: 5, // blur radius
                      offset: const Offset(0, 5), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                child: Center(
                    child: Text(result,
                      style: const TextStyle(
                        color: Color(0xFFFDFDFD),
                      ),
                    ),
                )
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('I need to rent', style: TextStyle(color: Color(0xFF7D7F88)),),
                    Text('I need to buy', style: TextStyle(color: Color(0xFF7D7F88)),),
                  ],
                ),
              ),
              onChanged: (position) {
                setState(() {
                  if (position == SlidableButtonPosition.end) {
                    flag = 1;
                    result = 'I need to buy';

                  } else {
                    flag = 0;
                    result = 'I need to rent';
                  }
                });
              },
            ),
          ),
          /// widget call after slide switch bar button
          flag == 0 ? NeedRent() : NeedBuy(),
        ],
      ),
    );
  }
}
