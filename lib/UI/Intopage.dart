import 'package:flutter/material.dart';
import 'package:spacebot/pages/home_page.dart';

class Intorpage extends StatefulWidget {
  const Intorpage({super.key});

  @override
  State<Intorpage> createState() => _IntorpageState();
}

class _IntorpageState extends State<Intorpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/onbaording.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Explore the\nUniverse',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Product sans',
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Journey through the cosmos\nwith our space app',
                  style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontSize: 15,
                      color: Color(0xFFB4B4B4)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        print("The button is pressed");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                      ))),
            ],
          )
        ],
      ),
    );
  }
}